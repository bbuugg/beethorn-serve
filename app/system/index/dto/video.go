package dto

type VideoQuery struct {
	Page   int `p:"page" v:"required#请设置页数"`
	Limit  int `p:"limit" v:"between:1,100#参数只允许1到100"`
	Status int `p:"status"`
	UserId int64
}

// 视频
type VideoCreate struct {
	Title       string   `p:"title"  v:"required#请输入标题"`  // 标题
	Cover       string   `p:"cover"  v:"required#请设置封面图"` // 封面
	Description string   `p:"description"`                // 描述
	CateId      int64    `p:"cateId"  v:"required|integer|min:1#请设置分类id|分类id必须为整型|分类id最小为1"`
	Resources   []int64  `p:"resources"`
	Tags        []string `p:"tags"`                         // 标签
	Link        string   `p:"link"  v:"required#请设置视频演示地址"` // 封面
	UserId      int64    `p:"userId"`
}

// 视频
type VideoEdit struct {
	VideoId     int64    `p:"videoId"  v:"required|integer|min:1#请设置id|id必须为整型|id最小为1"` // 封面
	Title       string   `p:"title"  v:"required#请输入标题"`                                // 标题
	Cover       string   `p:"cover"  v:"required#请设置封面图"`                               // 封面
	Description string   `p:"description"`                                              // 描述
	CateId      int64    `p:"cateId"  v:"required|integer|min:1#请设置分类id|分类id必须为整型|分类id最小为1"`
	Tags        []string `p:"tags"`
	Resources   []int64  `p:"resources"`
	Link        string   `p:"link"  v:"required#请设置视频演示地址"` // 封面
	UserId      int64    `p:"userId"`
}
