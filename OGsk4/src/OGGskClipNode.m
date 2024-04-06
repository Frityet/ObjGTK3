/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskClipNode.h"

@implementation OGGskClipNode

- (instancetype)initWithChild:(GskRenderNode*)child clip:(const graphene_rect_t*)clip
{
	GskClipNode* gobjectValue = GSK_CLIP_NODE(gsk_clip_node_new(child, clip));

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

- (GskClipNode*)castedGObject
{
	return GSK_CLIP_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_clip_node_get_child([self castedGObject]);

	return returnValue;
}

- (const graphene_rect_t*)clip
{
	const graphene_rect_t* returnValue = gsk_clip_node_get_clip([self castedGObject]);

	return returnValue;
}


@end