// ==========================================================================
// This is auto-generated by gf cli tool. DO NOT EDIT THIS FILE MANUALLY.
// ==========================================================================

package internal



// SysMediaRelated is the golang structure for table sys_media_related.
type SysMediaRelated struct {
    MediaId   int64  `orm:"media_id"   json:"mediaId"`   //   
    RelatedId int64  `orm:"related_id" json:"relatedId"` //   
    Module    string `orm:"module"     json:"module"`    //   
}