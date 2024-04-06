/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskBlendNode.h"

@implementation OGGskBlendNode

- (instancetype)initWithBottom:(GskRenderNode*)bottom top:(GskRenderNode*)top blendMode:(GskBlendMode)blendMode
{
	GskBlendNode* gobjectValue = GSK_BLEND_NODE(gsk_blend_node_new(bottom, top, blendMode));

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

- (GskBlendNode*)castedGObject
{
	return GSK_BLEND_NODE([self gObject]);
}

- (GskBlendMode)blendMode
{
	GskBlendMode returnValue = gsk_blend_node_get_blend_mode([self castedGObject]);

	return returnValue;
}

- (GskRenderNode*)bottomChild
{
	GskRenderNode* returnValue = gsk_blend_node_get_bottom_child([self castedGObject]);

	return returnValue;
}

- (GskRenderNode*)topChild
{
	GskRenderNode* returnValue = gsk_blend_node_get_top_child([self castedGObject]);

	return returnValue;
}


@end