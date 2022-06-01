// ==========================================================================
// This is auto-generated by gf cli tool. DO NOT EDIT THIS FILE MANUALLY.
// ==========================================================================

package internal

import (
    "github.com/gogf/gf/os/gtime"
)

// SysRole is the golang structure for table sys_role.
type SysRole struct {
    RoleId     int64       `orm:"role_id,primary" json:"roleId"`     // 角色ID                   
    Title      string      `orm:"title"           json:"title"`      // 角色名称                 
    Status     int         `orm:"status"          json:"status"`     // 角色状态（2正常 1停用）  
    CreateTime *gtime.Time `orm:"create_time"     json:"createTime"` // 创建时间                 
    UpdateTime *gtime.Time `orm:"update_time"     json:"updateTime"` // 更新时间                 
    Remark     string      `orm:"remark"          json:"remark"`     // 备注                     
}