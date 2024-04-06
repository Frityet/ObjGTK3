/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskTransformNode.h"

@implementation OGGskTransformNode

- (instancetype)initWithChild:(GskRenderNode*)child transform:(GskTransform*)transform
{
	GskTransformNode* gobjectValue = (gsk_transform_node_new(child, transform));

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
	GskRenderNode* returnValue = gsk_transform_node_get_child([self castedGObject]);

	return returnValue;
}

- (GskTransform*)transform
{
	GskTransform* returnValue = gsk_transform_node_get_transform([self castedGObject]);

	return returnValue;
}


@end