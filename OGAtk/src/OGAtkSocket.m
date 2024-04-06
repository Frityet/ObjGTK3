/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkSocket.h"

@implementation OGAtkSocket

- (instancetype)init
{
	AtkSocket* gobjectValue = ATK_SOCKET(atk_socket_new());

	@try {
		self = [super initWithGObject:gobjectValue];
	} @catch (id e) {
		g_object_unref(gobjectValue);
		[self release];
		@throw e;
	}

	g_object_unref(gobjectValue);
	return self;
}

- (AtkSocket*)castedGObject
{
	return ATK_SOCKET([self gObject]);
}

- (void)embed:(OFString*)plugId
{
	atk_socket_embed([self castedGObject], [plugId UTF8String]);
}

- (bool)isOccupied
{
	bool returnValue = atk_socket_is_occupied([self castedGObject]);

	return returnValue;
}


@end