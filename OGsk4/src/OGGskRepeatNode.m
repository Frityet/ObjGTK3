/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskRepeatNode.h"

@implementation OGGskRepeatNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds child:(GskRenderNode*)child childBounds:(const graphene_rect_t*)childBounds
{
	GskRepeatNode* gobjectValue = GSK_REPEAT_NODE(gsk_repeat_node_new(bounds, child, childBounds));

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

- (GskRepeatNode*)castedGObject
{
	return GSK_REPEAT_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_repeat_node_get_child([self castedGObject]);

	return returnValue;
}

- (const graphene_rect_t*)childBounds
{
	const graphene_rect_t* returnValue = gsk_repeat_node_get_child_bounds([self castedGObject]);

	return returnValue;
}


@end