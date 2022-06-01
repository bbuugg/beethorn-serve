// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package dao

import (
	"fiber/app/dao/internal"
)

// sysCarouselDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type sysCarouselDao struct {
	*internal.SysCarouselDao
}

var (
	// SysCarousel is globally public accessible object for table sys_carousel operations.
	SysCarousel = &sysCarouselDao{
		internal.SysCarousel,
	}
)

// Fill with you ideas below.