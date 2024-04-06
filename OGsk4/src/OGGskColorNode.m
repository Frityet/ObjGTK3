/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskColorNode.h"

@implementation OGGskColorNode

- (instancetype)initWithRgba:(const GdkRGBA*)rgba bounds:(const graphene_rect_t*)bounds
{
	GskColorNode* gobjectValue = (gsk_color_node_new(rgba, bounds));

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



- (const GdkRGBA*)color
{
	const GdkRGBA* returnValue = gsk_color_node_get_color([self castedGObject]);

	return returnValue;
}


@end