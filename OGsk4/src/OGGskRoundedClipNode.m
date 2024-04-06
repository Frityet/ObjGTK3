/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskRoundedClipNode.h"

@implementation OGGskRoundedClipNode

- (instancetype)initWithChild:(GskRenderNode*)child clip:(const GskRoundedRect*)clip
{
	GskRoundedClipNode* gobjectValue = (gsk_rounded_clip_node_new(child, clip));

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
	GskRenderNode* returnValue = gsk_rounded_clip_node_get_child([self castedGObject]);

	return returnValue;
}

- (const GskRoundedRect*)clip
{
	const GskRoundedRect* returnValue = gsk_rounded_clip_node_get_clip([self castedGObject]);

	return returnValue;
}


@end