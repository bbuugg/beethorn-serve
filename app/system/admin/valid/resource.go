package valid

import (
	"fiber/app/dao"
)

var Resource = new(resourceValid)

type resourceValid struct {
}

// CheckIsUser 检查资源是否属于作者
func (s *resourceValid) CheckIsUser(userId int64, resourceId []int64) bool {
	count, err := dao.SysResource.Where(dao.SysResource.Columns.UserId, userId).
		Where(dao.SysResource.Columns.ResourceId+" IN(?)", resourceId).Count()
	if err == nil && count == len(resourceId) {
		return true
	}
	return false
}
