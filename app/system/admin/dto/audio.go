package dto

type AudioQuery struct {
	Page   int    `p:"page" v:"required#请设置页数"`
	Limit  int    `p:"limit" v:"between:1,100#参数只允许1到100"`
	Status int    `p:"status"`
	Title  string `p:"title"`
	CateId int64  `p:"cateId"`
}

// 音频
type AudioCreate struct {
	Link        string   `p:"link"  v:"required#请设置音频演示地址"` // 封面
	Cover       string   `p:"cover"  v:"required#请设置封面图"`   // 封面
	Title       string   `p:"title"  v:"required#请输入标题"`    // 标题
	CateId      int64    `p:"cateId"  v:"required|integer|min:1#请设置分类id|分类id必须为整型|分类id最小为1"`
	Description string   `p:"description"` // 描述
	Tags        []string `p:"tags"`        // 标签
	ResourceId  []int64  `p:"resourceId"`
	Views       int64    `p:"views"`
	Hots        int64    `p:"hots"`
	Favorites   int64    `p:"favorites"`
	Likes       int64    `p:"likes"`
	UserId      int64    `p:"userId"`
}

// 音频
type AudioEdit struct {
	AudioId     int64    `p:"id"  v:"required|integer|min:1#请设置id|id必须为整型|id最小为1"` // 封面
	Link        string   `p:"link"  v:"required#请设置音频演示地址"`                        // 封面
	Cover       string   `p:"cover"  v:"required#请设置封面图"`                          // 封面
	Title       string   `p:"title"  v:"required#请输入标题"`                           // 标题
	CateId      int64    `p:"cateId"  v:"required|integer|min:1#请设置分类id|分类id必须为整型|分类id最小为1"`
	Description string   `p:"description"` // 描述
	Tags        []string `p:"tags"`        // 标签
	ResourceId  []int64  `p:"resourceId"`
	Views       int64    `p:"views"`
	Hots        int64    `p:"hots"`
	Favorites   int64    `p:"favorites"`
	Likes       int64    `p:"likes"`
	UserId      int64    `p:"userId"`
}
