/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskBlurNode.h"

@implementation OGGskBlurNode

- (instancetype)initWithChild:(GskRenderNode*)child radius:(float)radius
{
	GskBlurNode* gobjectValue = (gsk_blur_node_new(child, radius));

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



- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_blur_node_get_child([self castedGObject]);

	return returnValue;
}

- (float)radius
{
	float returnValue = gsk_blur_node_get_radius([self castedGObject]);

	return returnValue;
}


@end