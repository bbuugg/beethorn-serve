// ==========================================================================
// This is auto-generated by gf cli tool. DO NOT EDIT THIS FILE MANUALLY.
// ==========================================================================

package internal



// SysRoleAuthority is the golang structure for table sys_role_authority.
type SysRoleAuthority struct {
    RoleId      int64 `orm:"role_id,primary"      json:"roleId"`      //   
    AuthorityId int64 `orm:"authority_id,primary" json:"authorityId"` //   
}