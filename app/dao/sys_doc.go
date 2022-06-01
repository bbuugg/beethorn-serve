// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package dao

import (
	"fiber/app/dao/internal"
)

// sysDocDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type sysDocDao struct {
	*internal.SysDocDao
}

var (
	// SysDoc is globally public accessible object for table sys_doc operations.
	SysDoc = &sysDocDao{
		internal.SysDoc,
	}
)

// Fill with you ideas below.