package service

import (
	"fiber/app/dao"
	"fiber/app/model"
	"fiber/app/system/admin/dto"
	"fiber/app/system/admin/result"
	"fiber/app/system/admin/shared"
	"fiber/app/tools/regex"
	"fiber/app/tools/response"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/util/gconv"
)

var Resource = new(resourceService)

type resourceService struct {
}

// SelectList 查询列表
func (s *resourceService) SelectList(req *dto.ResourceQuery) (int, []*result.ResourceList, response.ResponseCode) {

	model := dao.SysResource.SysResourceDao.Order(dao.SysResource.Columns.UpdateTime + " desc")
	if req.Status == 4 {
		model = model.Where(dao.SysResource.Columns.DeleteTime+" !=", "")
	}
	if req.Status != 4 {
		model = model.Where(dao.SysResource.Columns.DeleteTime, nil)
	}

	if req.Status != 0 && req.Status != 4 {
		model = model.Where(dao.SysResource.Columns.Status, req.Status)
	}

	if req.Title != "" {
		model = model.Where(dao.SysResource.Columns.Title+" like ?", "%"+req.Title+"%")
	}
	if req.CateId != 0 {
		model = model.Where(dao.SysResource.Columns.CateId, req.CateId)
	}

	total, err := model.Count()
	if err != nil {
		return 0, nil, response.DB_READ_ERROR
	}
	model = model.Page(req.Page, req.Limit)
	list, err := model.Fields(
		dao.SysResource.Columns.ResourceId,
		dao.SysResource.Columns.UserId,
		dao.SysResource.Columns.Title,
		dao.SysResource.Columns.Cover,
		dao.SysResource.Columns.Status,
		dao.SysResource.Columns.CreateTime,
		dao.SysResource.Columns.CateId,
	).All()
	if err != nil {
		return 0, nil, response.DB_READ_ERROR
	}
	var res []*result.ResourceList
	for _, i := range list {
		var info *result.ResourceList
		err = gconv.Struct(i, &info)
		if err != nil {
			return 0, nil, response.DB_READ_ERROR
		}
		category, err := dao.SysCategory.Value(dao.SysCategory.Columns.Title, dao.SysCategory.Columns.CateId, i.CateId)
		if err != nil {
			return 0, nil, response.DB_READ_ERROR
		}
		info.Category = gconv.String(category)

		nickName, err := dao.SysUser.Value(dao.SysUser.Columns.NickName, dao.SysUser.Columns.UserId, i.UserId)
		if err != nil {
			return 0, nil, response.DB_READ_ERROR
		}
		info.NickName = gconv.String(nickName)

		res = append(res, info)
	}
	return total, res, response.SUCCESS
}

// Create 创建
func (s *resourceService) Create(req *dto.ResourceCreate) (code response.ResponseCode) {

	var entity model.SysResource
	err := gconv.Struct(req, &entity)
	if err != nil {
		return response.FAILD
	}

	entity.CreateTime = gtime.Now()
	entity.UpdateTime = gtime.Now()
	entity.Status = shared.StatusReviewed

	tx, err := g.DB().Begin()
	if err != nil {
		return response.DB_TX_ERROR
	}
	defer func() {
		if code != response.SUCCESS {
			tx.Rollback()
		} else {
			tx.Commit()
		}
	}()
	rs, err := tx.Insert(dao.SysResource.Table, entity)
	if err != nil {
		return response.ADD_FAILED
	}
	rid, err := rs.LastInsertId()

	if err != nil || rid <= 0 {
		return response.ADD_FAILED
	}

	// 增加 关联标签
	if len(req.Tags) > 0 {
		err = Tag.AddRelated(tx, req.Tags, rid, shared.Resource)
		if err != nil {
			return response.ADD_FAILED
		}
	}

	// 管理媒体库
	pathList, err := regex.GetSrcLink(req.Content)
	pathList = append(pathList, req.Cover)
	if len(pathList) > 0 {
		err = Media.AddRelated(tx, pathList, rid, shared.Resource)
		if err != nil {
			return response.ADD_FAILED
		}
	}

	return response.SUCCESS
}

// EditInfo 取信息
func (s *resourceService) EditInfo(id int64) (*result.ResourceEditInfo, response.ResponseCode) {
	var editInfo *result.ResourceEditInfo
	err := dao.SysResource.
		Where(dao.SysResource.Columns.ResourceId, id).
		Struct(&editInfo)
	if editInfo == nil || err != nil {
		return nil, response.NOT_FOUND
	}
	// 获取标签
	tagList, err := Tag.SelectRelatedList(id, shared.Resource)
	if err != nil {
		return nil, response.DB_READ_ERROR
	}
	editInfo.TagList = tagList

	return editInfo, response.SUCCESS
}

// Edit 编辑
func (s *resourceService) Edit(req *dto.ResourceEdit) (code response.ResponseCode) {
	entity := g.Map{
		dao.SysResource.Columns.Cover:       req.Cover,
		dao.SysResource.Columns.Title:       req.Title,
		dao.SysResource.Columns.Content:     req.Content,
		dao.SysResource.Columns.CateId:      req.CateId,
		dao.SysResource.Columns.Description: req.Description,
		dao.SysResource.Columns.Price:       req.Price,
		dao.SysResource.Columns.DownUrl:     req.DownUrl,
		dao.SysResource.Columns.Attribute:   req.Attribute,
		dao.SysResource.Columns.Purpose:     req.Purpose,
		dao.SysResource.Columns.UpdateTime:  gtime.Now(),
	}
	entity[dao.SysResource.Columns.HasDown] = req.HasDown
	entity[dao.SysResource.Columns.DownMode] = req.DownMode
	entity[dao.SysResource.Columns.UserId] = req.UserId
	entity[dao.SysResource.Columns.Hots] = req.Hots
	entity[dao.SysResource.Columns.Views] = req.Views
	entity[dao.SysResource.Columns.Favorites] = req.Favorites
	entity[dao.SysResource.Columns.Likes] = req.Likes
	entity[dao.SysResource.Columns.Status] = shared.StatusReviewed
	tx, err := g.DB().Begin()
	if err != nil {
		return response.DB_TX_ERROR
	}
	defer func() {
		if code != response.SUCCESS {
			tx.Rollback()
		} else {
			tx.Commit()
		}
	}()
	_, err = tx.Update(dao.SysResource.Table, entity, dao.SysResource.Columns.ResourceId, req.ResourceId)
	if err != nil {
		return response.UPDATE_FAILED
	}

	// 增加 关联标签
	err = Tag.RemoveRelated(tx, []int64{req.ResourceId}, shared.Resource)
	if err != nil {

		return response.UPDATE_FAILED
	}
	if len(req.Tags) > 0 {
		err = Tag.AddRelated(tx, req.Tags, req.ResourceId, shared.Resource)
		if err != nil {
			return response.UPDATE_FAILED
		}
	}

	// 删除媒体
	err = Media.RemoveRelated(tx, []int64{req.ResourceId}, shared.Resource)
	if err != nil {
		return response.UPDATE_FAILED
	}
	pathList, err := regex.GetSrcLink(req.Content)
	pathList = append(pathList, req.Cover)
	if len(pathList) > 0 {
		err = Media.AddRelated(tx, pathList, req.ResourceId, shared.Resource)
		if err != nil {
			return response.UPDATE_FAILED
		}
	}
	return response.SUCCESS
}

// Review 更新状态
func (s *resourceService) Review(req *dto.Review) (code response.ResponseCode) {
	list, err := dao.SysResource.Fields(
		dao.SysResource.Columns.UserId,
		dao.SysResource.Columns.Title,
		dao.SysResource.Columns.ResourceId,
		dao.SysResource.Columns.Status).
		Where(dao.SysResource.Columns.ResourceId+" IN(?)", req.IdList).All()
	if err != nil {
		return response.DB_READ_ERROR
	}
	tx, err := g.DB().Begin()
	if err != nil {
		return response.DB_TX_ERROR
	}
	defer func() {
		if code != response.SUCCESS {
			tx.Rollback()
		} else {
			tx.Commit()
		}
	}()

	var tmpIds []int64
	var tmpInfoList []*model.SysResource
	for _, i := range list {
		if i.Status == 1 {
			tmpIds = append(tmpIds, i.ResourceId)
			tmpInfoList = append(tmpInfoList, i)
		}
	}

	if len(tmpIds) < 1 {
		return response.FAILD
	}
	_, err = tx.Update(dao.SysResource.Table,
		g.Map{
			dao.SysResource.Columns.Status: req.Status,
			dao.SysResource.Columns.Remark: req.Remark,
		}, dao.SysResource.Columns.ResourceId+" IN(?)", tmpIds)
	if err != nil {
		return response.UPDATE_FAILED
	}

	// 设置通知
	var noticeList []model.SysNotice
	for _, i := range tmpInfoList {
		var notice model.SysNotice
		notice.Type = shared.NoticeSystem
		notice.DetailId = i.ResourceId
		notice.DetailModule = shared.Resource
		notice.Status = shared.NoticeStatusReview
		notice.Receiver = i.UserId
		notice.CreateTime = gtime.Now()
		notice.SystemType = shared.NoticeSysTemReview
		if req.Status == shared.StatusReviewed {
			notice.Content = "您发布的资源《" + i.Title + "》已通过审核" + req.Remark
			err = Integral.SetUserContentIntegral(tx, i.UserId)
			if err != nil {
				return response.DB_SAVE_ERROR
			}
		}
		if req.Status == shared.StatusRefuse {
			notice.Content = "您发布的资源《" + i.Title + "》未通过审核，原因：" + req.Remark
		}
		noticeList = append(noticeList, notice)
	}
	if len(noticeList) > 0 {
		_, err = tx.Insert(dao.SysNotice.Table, noticeList)
		if err != nil {
			return response.DB_TX_ERROR
		}
	}
	return response.SUCCESS
}

// Recover 软删除
func (s *resourceService) Recover(req *dto.Remove) (code response.ResponseCode) {

	tx, err := g.DB().Begin()
	if err != nil {
		return response.DB_TX_ERROR
	}
	defer func() {
		if code != response.SUCCESS {
			tx.Rollback()
		} else {
			tx.Commit()
		}
	}()

	list, err := dao.SysResource.Fields(
		dao.SysResource.Columns.UserId,
		dao.SysResource.Columns.ResourceId,
		dao.SysResource.Columns.Title).
		Where(dao.SysResource.Columns.ResourceId+" IN(?)", req.IdList).All()
	if err != nil {
		return response.DB_READ_ERROR
	}

	_, err = tx.Update(dao.SysResource.Table, g.Map{
		dao.SysResource.Columns.DeleteTime: gtime.Now(),
	},
		dao.SysResource.Columns.ResourceId+" IN(?)", req.IdList)
	if err != nil {
		return response.DB_READ_ERROR
	}

	var noticeList []model.SysNotice
	for _, info := range list {
		var notice model.SysNotice
		notice.Type = shared.NoticeSystem
		notice.SystemType = shared.NoticeSysTemDeleteContent
		notice.DetailId = info.ResourceId
		notice.DetailModule = shared.Resource
		notice.Status = shared.NoticeStatusReview
		notice.Content = "您发布的资源《" + info.Title + "》已被删除，原因：" + req.Remark
		notice.Receiver = info.UserId
		notice.CreateTime = gtime.Now()
		noticeList = append(noticeList, notice)
	}

	// 写入通知
	_, err = tx.Insert(dao.SysNotice.Table, noticeList)
	if err != nil {
		return response.DB_SAVE_ERROR
	}
	return response.SUCCESS
}

// Reduction 还原
func (s *resourceService) Reduction(idList []int64) response.ResponseCode {
	_, err := dao.SysResource.Update(g.Map{
		dao.SysResource.Columns.DeleteTime: nil,
	}, dao.SysResource.Columns.ResourceId+" IN(?)", idList)
	if err != nil {
		return response.DB_SAVE_ERROR
	}
	return response.SUCCESS
}

// Remove 删除
func (s *resourceService) Remove(idList []int64) (code response.ResponseCode) {

	tx, err := g.DB().Begin()
	if err != nil {
		return response.DB_TX_ERROR
	}
	defer func() {
		if code != response.SUCCESS {
			tx.Rollback()
		} else {
			tx.Commit()
		}
	}()

	_, err = tx.Delete(dao.SysResource.Table,
		dao.SysResource.Columns.ResourceId+" IN(?)", idList)
	if err != nil {
		return response.DELETE_FAILED
	}

	// 删除 关联标签
	err = Tag.RemoveRelated(tx, idList, shared.Resource)
	if err != nil {
		return response.DELETE_FAILED
	}

	// 删除用户收藏和点赞
	err = User.RemoveUserLike(tx, idList, shared.Resource)
	if err != nil {
		return response.DELETE_FAILED
	}

	err = User.RemoveUserFavorite(tx, idList, shared.Resource)
	if err != nil {
		return response.DELETE_FAILED
	}

	// 删除媒体
	err = Media.RemoveRelated(tx, idList, shared.Resource)
	if err != nil {

		return response.DELETE_FAILED
	}
	return response.SUCCESS
}

// RemoveByUser 删除
func (s *resourceService) RemoveByUser(tx *gdb.TX, Ids []int64) error {

	list, err := dao.SysResource.Fields(
		dao.SysResource.Columns.UserId,
		dao.SysResource.Columns.ResourceId,
		dao.SysResource.Columns.Title).
		Where(dao.SysResource.Columns.UserId+" IN(?)", Ids).All()
	if err != nil {
		return err
	}

	_, err = tx.Delete(dao.SysResource.Table, dao.SysResource.Columns.UserId+" IN(?)", Ids)
	if err != nil {
		return err
	}

	var idList []int64
	for _, info := range list {
		idList = append(idList, info.ResourceId)
	}

	// 删除 关联标签
	err = Tag.RemoveRelated(tx, idList, shared.Resource)
	if err != nil {
		return err
	}

	// 删除用户收藏和点赞
	err = User.RemoveUserLike(tx, idList, shared.Resource)
	if err != nil {
		return err
	}

	err = User.RemoveUserFavorite(tx, idList, shared.Resource)
	if err != nil {
		return err
	}

	// 删除媒体
	err = Media.RemoveRelated(tx, idList, shared.Resource)
	if err != nil {

		return err
	}

	return nil
}

func (s *resourceService) AddRelated(tx *gdb.TX, ids []int64, relateId int64, module string) error {
	var tmpList []map[string]interface{}
	for _, i := range ids {
		tmp := make(map[string]interface{})
		tmp[dao.SysResourceRelated.Columns.Module] = module
		tmp[dao.SysResourceRelated.Columns.RelatedId] = relateId
		tmp[dao.SysResourceRelated.Columns.ResourceId] = i
		tmpList = append(tmpList, tmp)
	}
	_, err := tx.Save(dao.SysResourceRelated.Table, tmpList)
	if err != nil {
		return err
	}
	return nil
}

// RemoveRelated 删除标签关联
func (s *resourceService) RemoveRelated(tx *gdb.TX, relatedId []int64, module string) error {
	_, err := tx.Model(dao.SysResourceRelated.Table).
		Where(dao.SysResourceRelated.Columns.RelatedId+" IN(?)", relatedId).
		And(dao.SysResourceRelated.Columns.Module, module).Delete()
	if err != nil {
		return err
	}
	return nil
}

func (s *resourceService) SelectRelatedList(rid int64, module string) ([]int64, error) {
	var listId []int64
	relatedIds, err := dao.SysResourceRelated.
		Where(dao.SysResourceRelated.Columns.Module, module).
		And(dao.SysResourceRelated.Columns.RelatedId, rid).
		All()
	if err != nil {
		return nil, err
	}
	for _, i := range relatedIds {
		listId = append(listId, i.ResourceId)
	}

	return listId, nil
}
