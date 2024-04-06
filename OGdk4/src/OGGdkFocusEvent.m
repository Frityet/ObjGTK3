/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkFocusEvent.h"

@implementation OGGdkFocusEvent

- (GdkFocusEvent*)castedGObject
{
	return GDK_FOCUS_EVENT([self gObject]);
}

- (bool)in
{
	bool returnValue = gdk_focus_event_get_in([self castedGObject]);

	return returnValue;
}


@end