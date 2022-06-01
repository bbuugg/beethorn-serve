// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package dao

import (
	"fiber/app/dao/internal"
)

// sysTagRelatedDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type sysTagRelatedDao struct {
	*internal.SysTagRelatedDao
}

var (
	// SysTagRelated is globally public accessible object for table sys_tag_related operations.
	SysTagRelated = &sysTagRelatedDao{
		internal.SysTagRelated,
	}
)

// Fill with you ideas below.