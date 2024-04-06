/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskShadowNode.h"

@implementation OGGskShadowNode

- (instancetype)initWithChild:(GskRenderNode*)child shadows:(const GskShadow*)shadows nshadows:(gsize)nshadows
{
	GskShadowNode* gobjectValue = (gsk_shadow_node_new(child, shadows, nshadows));

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
	GskRenderNode* returnValue = gsk_shadow_node_get_child([self castedGObject]);

	return returnValue;
}

- (gsize)nshadows
{
	gsize returnValue = gsk_shadow_node_get_n_shadows([self castedGObject]);

	return returnValue;
}

- (const GskShadow*)shadow:(gsize)i
{
	const GskShadow* returnValue = gsk_shadow_node_get_shadow([self castedGObject], i);

	return returnValue;
}


@end