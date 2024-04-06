/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskStrokeNode.h"

@implementation OGGskStrokeNode

- (instancetype)initWithChild:(GskRenderNode*)child path:(GskPath*)path stroke:(const GskStroke*)stroke
{
	GskStrokeNode* gobjectValue = GSK_STROKE_NODE(gsk_stroke_node_new(child, path, stroke));

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

- (GskStrokeNode*)castedGObject
{
	return GSK_STROKE_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_stroke_node_get_child([self castedGObject]);

	return returnValue;
}

- (GskPath*)path
{
	GskPath* returnValue = gsk_stroke_node_get_path([self castedGObject]);

	return returnValue;
}

- (const GskStroke*)stroke
{
	const GskStroke* returnValue = gsk_stroke_node_get_stroke([self castedGObject]);

	return returnValue;
}


@end