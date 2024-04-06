/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkCrossingEvent.h"

@implementation OGGdkCrossingEvent

- (GdkCrossingEvent*)castedGObject
{
	return GDK_CROSSING_EVENT([self gObject]);
}

- (GdkNotifyType)detail
{
	GdkNotifyType returnValue = gdk_crossing_event_get_detail([self castedGObject]);

	return returnValue;
}

- (bool)focus
{
	bool returnValue = gdk_crossing_event_get_focus([self castedGObject]);

	return returnValue;
}

- (GdkCrossingMode)mode
{
	GdkCrossingMode returnValue = gdk_crossing_event_get_mode([self castedGObject]);

	return returnValue;
}


@end