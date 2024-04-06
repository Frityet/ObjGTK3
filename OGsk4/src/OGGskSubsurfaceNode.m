/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskSubsurfaceNode.h"

@implementation OGGskSubsurfaceNode

+ (gpointer)subsurface:(const GskRenderNode*)node
{
	gpointer returnValue = gsk_subsurface_node_get_subsurface(node);

	return returnValue;
}

- (instancetype)initWithChild:(GskRenderNode*)child subsurface:(gpointer)subsurface
{
	GskSubsurfaceNode* gobjectValue = GSK_SUBSURFACE_NODE(gsk_subsurface_node_new(child, subsurface));

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

- (GskSubsurfaceNode*)castedGObject
{
	return GSK_SUBSURFACE_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_subsurface_node_get_child([self castedGObject]);

	return returnValue;
}


@end