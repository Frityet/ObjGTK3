/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkScrollEvent.h"

@implementation OGGdkScrollEvent

- (void)deltasWithDeltaX:(double*)deltaX deltaY:(double*)deltaY
{
	gdk_scroll_event_get_deltas([self castedGObject], deltaX, deltaY);
}

- (GdkScrollDirection)direction
{
	GdkScrollDirection returnValue = gdk_scroll_event_get_direction([self castedGObject]);

	return returnValue;
}

- (GdkScrollUnit)unit
{
	GdkScrollUnit returnValue = gdk_scroll_event_get_unit([self castedGObject]);

	return returnValue;
}

- (bool)isStop
{
	bool returnValue = gdk_scroll_event_is_stop([self castedGObject]);

	return returnValue;
}


@end
