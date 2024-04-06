/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node controlling the color matrix of its single child node.
 *
 */
@interface OGGskColorMatrixNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child colorMatrix:(const graphene_matrix_t*)colorMatrix colorOffset:(const graphene_vec4_t*)colorOffset;

/**
 * Methods
 */

- (GskColorMatrixNode*)castedGObject;

/**
 * Gets the child node that is getting its colors modified by the given @node.
 *
 * @return The child that is getting its colors modified
 */
- (GskRenderNode*)child;

/**
 * Retrieves the color matrix used by the @node.
 *
 * @return a 4x4 color matrix
 */
- (const graphene_matrix_t*)colorMatrix;

/**
 * Retrieves the color offset used by the @node.
 *
 * @return a color vector
 */
- (const graphene_vec4_t*)colorOffset;

@end