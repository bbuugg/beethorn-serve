// ==========================================================================
// This is auto-generated by gf cli tool. DO NOT EDIT THIS FILE MANUALLY.
// ==========================================================================

package internal

import (
    "github.com/gogf/gf/os/gtime"
)

// SysUserVip is the golang structure for table sys_user_vip.
type SysUserVip struct {
    UserId     int64       `orm:"user_id,primary" json:"userId"`     // 用户ID  
    VipId      int64       `orm:"vip_id,primary"  json:"vipId"`      // 角色ID  
    StartTime  *gtime.Time `orm:"start_time"      json:"startTime"`  //         
    FinishTime *gtime.Time `orm:"finish_time"     json:"finishTime"` //         
}