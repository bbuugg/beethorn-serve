// ==========================================================================
// This is auto-generated by gf cli tool. DO NOT EDIT THIS FILE MANUALLY.
// ==========================================================================

package internal

import (
    "github.com/gogf/gf/os/gtime"
)

// SysVideo is the golang structure for table sys_video.
type SysVideo struct {
    VideoId     int64       `orm:"video_id,primary" json:"videoId"`     //                                               
    UserId      int64       `orm:"user_id"          json:"userId"`      //                                               
    CateId      int64       `orm:"cate_id"          json:"cateId"`      // 分类                                          
    Title       string      `orm:"title"            json:"title"`       // 标题                                          
    Cover       string      `orm:"cover"            json:"cover"`       // 封面                                          
    Link        string      `orm:"link"             json:"link"`        // 视频地址                                      
    Hots        int64       `orm:"hots"             json:"hots"`        //                                               
    Likes       int64       `orm:"likes"            json:"likes"`       // 点赞数                                        
    Favorites   uint64      `orm:"favorites"        json:"favorites"`   // 收藏                                          
    Views       int64       `orm:"views"            json:"views"`       // 播放量                                        
    Description string      `orm:"description"      json:"description"` // 描述                                          
    OtherLink   string      `orm:"other_link"       json:"otherLink"`   // 第三方地址                                    
    Status      int         `orm:"status"           json:"status"`      // 状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿  
    DeleteTime  *gtime.Time `orm:"delete_time"      json:"deleteTime"`  //                                               
    CreateTime  *gtime.Time `orm:"create_time"      json:"createTime"`  //                                               
    UpdateTime  *gtime.Time `orm:"update_time"      json:"updateTime"`  //                                               
    Remark      string      `orm:"remark"           json:"remark"`      //                                               
}