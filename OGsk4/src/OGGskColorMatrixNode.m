/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskColorMatrixNode.h"

@implementation OGGskColorMatrixNode

- (instancetype)initWithChild:(GskRenderNode*)child colorMatrix:(const graphene_matrix_t*)colorMatrix colorOffset:(const graphene_vec4_t*)colorOffset
{
	GskColorMatrixNode* gobjectValue = (gsk_color_matrix_node_new(child, colorMatrix, colorOffset));

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
	GskRenderNode* returnValue = gsk_color_matrix_node_get_child([self castedGObject]);

	return returnValue;
}

- (const graphene_matrix_t*)colorMatrix
{
	const graphene_matrix_t* returnValue = gsk_color_matrix_node_get_color_matrix([self castedGObject]);

	return returnValue;
}

- (const graphene_vec4_t*)colorOffset
{
	const graphene_vec4_t* returnValue = gsk_color_matrix_node_get_color_offset([self castedGObject]);

	return returnValue;
}


@end