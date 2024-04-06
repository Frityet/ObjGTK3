/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskContainerNode.h"

@implementation OGGskContainerNode

- (instancetype)initWithChildren:(GskRenderNode**)children nchildren:(guint)nchildren
{
	GskContainerNode* gobjectValue = GSK_CONTAINER_NODE(gsk_container_node_new(children, nchildren));

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

- (GskContainerNode*)castedGObject
{
	return GSK_CONTAINER_NODE([self gObject]);
}

- (GskRenderNode*)child:(guint)idx
{
	GskRenderNode* returnValue = gsk_container_node_get_child([self castedGObject], idx);

	return returnValue;
}

- (guint)nchildren
{
	guint returnValue = gsk_container_node_get_n_children([self castedGObject]);

	return returnValue;
}


@end