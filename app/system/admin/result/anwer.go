package result

import "github.com/gogf/gf/os/gtime"

// 回答
type AnswerList struct {
	AnswerId   int64       `json:"id"`       //
	Content    string      `json:"content"`  //
	NickName   string      `json:"nickName"` //
	TopicInfo  AnswerTopic `json:"topicInfo"`
	Price      float64     `json:"price"`
	IsAdoption int         `json:"isAdoption"` //
	Status     int         `json:"status"`     //
	CreateTime *gtime.Time `json:"createTime"` //
}

type AnswerTopic struct {
	Title string `json:"title"`
	Id    int64  `json:"id"`
}
