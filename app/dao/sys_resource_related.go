// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package dao

import (
	"fiber/app/dao/internal"
)

// sysResourceRelatedDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type sysResourceRelatedDao struct {
	*internal.SysResourceRelatedDao
}

var (
	// SysResourceRelated is globally public accessible object for table sys_resource_related operations.
	SysResourceRelated = &sysResourceRelatedDao{
		internal.SysResourceRelated,
	}
)

// Fill with you ideas below.