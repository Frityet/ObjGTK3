/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkTouchEvent.h"

@implementation OGGdkTouchEvent

- (GdkTouchEvent*)castedGObject
{
	return GDK_TOUCH_EVENT([self gObject]);
}

- (bool)emulatingPointer
{
	bool returnValue = gdk_touch_event_get_emulating_pointer([self castedGObject]);

	return returnValue;
}


@end