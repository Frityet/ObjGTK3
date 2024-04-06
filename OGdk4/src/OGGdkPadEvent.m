/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkPadEvent.h"

@implementation OGGdkPadEvent

- (GdkPadEvent*)castedGObject
{
	return GDK_PAD_EVENT([self gObject]);
}

- (void)axisValueWithIndex:(guint*)index value:(double*)value
{
	gdk_pad_event_get_axis_value([self castedGObject], index, value);
}

- (guint)button
{
	guint returnValue = gdk_pad_event_get_button([self castedGObject]);

	return returnValue;
}

- (void)groupModeWithGroup:(guint*)group mode:(guint*)mode
{
	gdk_pad_event_get_group_mode([self castedGObject], group, mode);
}


@end