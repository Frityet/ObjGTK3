/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskFillNode.h"

@implementation OGGskFillNode

- (instancetype)initWithChild:(GskRenderNode*)child path:(GskPath*)path fillRule:(GskFillRule)fillRule
{
	GskFillNode* gobjectValue = GSK_FILL_NODE(gsk_fill_node_new(child, path, fillRule));

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

- (GskFillNode*)castedGObject
{
	return GSK_FILL_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_fill_node_get_child([self castedGObject]);

	return returnValue;
}

- (GskFillRule)fillRule
{
	GskFillRule returnValue = gsk_fill_node_get_fill_rule([self castedGObject]);

	return returnValue;
}

- (GskPath*)path
{
	GskPath* returnValue = gsk_fill_node_get_path([self castedGObject]);

	return returnValue;
}


@end