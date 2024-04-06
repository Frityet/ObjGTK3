/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskBroadwayRenderer.h"

#import "OGGskRenderer.h"

@implementation OGGskBroadwayRenderer

- (instancetype)init
{
	GskBroadwayRenderer* gobjectValue = GSK_BROADWAY_RENDERER(gsk_broadway_renderer_new());

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

- (GskBroadwayRenderer*)castedGObject
{
	return GSK_BROADWAY_RENDERER([self gObject]);
}


@end