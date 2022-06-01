package result

import "github.com/gogf/gf/os/gtime"

// 文章
type VideoList struct {
	VideoId     int64       `json:"id"`
	Title       string      `json:"title"`
	Cover       string      `json:"cover"`
	Description string      `json:"description"`
	Status      int         `json:"status"`
	CreateTime  *gtime.Time `json:"createTime"`
}

// 视频
type VideoInfo struct {
	VideoId     int64         `json:"id"`          //
	UserInfo    *UserInfo     `json:"userInfo"`    // 发布用户
	CateInfo    *CategoryInfo `json:"cateInfo"`    // 发布用户
	Title       string        `json:"title"`       // 标题
	Link        string        `json:"link"`        // 标题
	Cover       string        `json:"cover"`       // 封面
	Description string        `json:"description"` // 描述

	Hots         int64           `json:"hots"`
	Views        int64           `json:"views"`
	Likes        int64           `json:"likes"`
	Comments     int64           `json:"comments"`
	Favorites    int64           `json:"favorites"`
	IsLike       bool            `json:"isLike"`       // 是否点赞
	IsFavorite   bool            `json:"isFavorite"`   // 是否收藏
	Status       int             `json:"status"`       // 状态：0 待审核 ，1已发布 ，3 草稿
	Remark       string          `json:"remark"`       // 备注
	CreateTime   *gtime.Time     `json:"createTime"`   // 创建时间
	TagList      []*TagList      `json:"tagList"`      // 备注
	ResourceList []*ResourceList `json:"resourceList"` // 备注
}

// 视频
type VideoListInfo struct {
	Id          int64         `c:"id"   json:"id"`                 //
	Module      string        `c:"module" json:"module"`           //
	UserInfo    *UserInfo     `c:"userInfo" json:"userInfo"`       // 发布用户
	Title       string        `c:"title" json:"title"`             // 标题
	Cover       string        `c:"cover" json:"cover"`             // 封面
	Description string        `c:"description" json:"description"` // 描述
	Hots        int64         `c:"hots" json:"hots"`
	Views       int64         `c:"views" json:"views"`
	Likes       int64         `c:"likes" json:"likes"`
	Status      int           `json:"status"` // 状态：0 待审核 ，1已发布 ，3 草稿
	Favorites   int64         `c:"favorites" json:"favorites"`
	CreateTime  *gtime.Time   `c:"createTime" json:"createTime"` // 创建时间
	CateInfo    *CategoryInfo `json:"cateInfo" json:"cateInfo"`  // 发布用户
}

// 视频
type VideoEditInfo struct {
	UserId       int64           `json:"userId"`       // 分类id
	CateId       int64           `json:"cateId"`       // 分类
	Title        string          `json:"title"`        // 标题
	Cover        string          `json:"cover"`        // 封面
	Link         string          `json:"link"`         // 视频地址
	Hots         int64           `json:"hots"`         //
	Likes        int64           `json:"likes"`        // 点赞数
	Favorites    uint64          `json:"favorites"`    // 收藏
	Views        int64           `json:"views"`        // 播放量
	Description  string          `json:"description"`  // 描述
	Status       int             `json:"status"`       // 状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿
	CreateTime   *gtime.Time     `json:"createTime"`   //
	TagList      []*TagList      `json:"tagList"`      // 备注
	ResourceList []*ResourceList `json:"resourceList"` // 备注
}
