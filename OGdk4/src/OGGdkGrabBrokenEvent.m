/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkGrabBrokenEvent.h"

#import "OGGdkSurface.h"

@implementation OGGdkGrabBrokenEvent

- (OGGdkSurface*)grabSurface
{
	GdkSurface* gobjectValue = GDK_SURFACE(gdk_grab_broken_event_get_grab_surface([self castedGObject]));

	OGGdkSurface* returnValue = [OGGdkSurface withGObject:gobjectValue];
	return returnValue;
}

- (bool)implicit
{
	bool returnValue = gdk_grab_broken_event_get_implicit([self castedGObject]);

	return returnValue;
}


@end
