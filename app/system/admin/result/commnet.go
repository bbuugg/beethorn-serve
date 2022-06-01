package result

import "github.com/gogf/gf/os/gtime"

//  评论
type CommentList struct {
	CommentId int64 `json:"id"` //

	RelatedInfo CommentRelatedInfo `json:"relatedInfo"`
	//Title      string      `json:"title"`      //
	NickName   string      `json:"nickName"`   // 内容
	Content    string      `json:"content"`    // 内容
	Type       int         `json:"type"`       // 类型 1图片 2视频 3文字
	Status     int         `json:"status"`     //
	CreateTime *gtime.Time `json:"createTime"` //
}

type CommentRelatedInfo struct {
	Title  string `json:"title"`
	Id     int64  `json:"id"`
	Module string `json:"module"`
}
