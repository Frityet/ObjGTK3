/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkDNDEvent.h"

#import "OGGdkDrop.h"

@implementation OGGdkDNDEvent

- (GdkDNDEvent*)castedGObject
{
	return GDK_DND_EVENT([self gObject]);
}

- (OGGdkDrop*)drop
{
	GdkDrop* gobjectValue = GDK_DROP(gdk_dnd_event_get_drop([self castedGObject]));

	OGGdkDrop* returnValue = [OGGdkDrop withGObject:gobjectValue];
	return returnValue;
}


@end