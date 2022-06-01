// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package dao

import (
	"fiber/app/dao/internal"
)

// sysAnswerDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type sysAnswerDao struct {
	*internal.SysAnswerDao
}

var (
	// SysAnswer is globally public accessible object for table sys_answer operations.
	SysAnswer = &sysAnswerDao{
		internal.SysAnswer,
	}
)

// Fill with you ideas below.