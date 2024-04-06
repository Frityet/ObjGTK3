/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkButtonEvent.h"

@implementation OGGdkButtonEvent

- (guint)button
{
	guint returnValue = gdk_button_event_get_button([self castedGObject]);

	return returnValue;
}


@end
