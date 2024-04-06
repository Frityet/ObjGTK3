/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node repeating its single child node.
 *
 */
@interface OGGskRepeatNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds child:(GskRenderNode*)child childBounds:(const graphene_rect_t*)childBounds;

/**
 * Methods
 */

- (GskRepeatNode*)castedGObject;

/**
 * Retrieves the child of @node.
 *
 * @return a `GskRenderNode`
 */
- (GskRenderNode*)child;

/**
 * Retrieves the bounding rectangle of the child of @node.
 *
 * @return a bounding rectangle
 */
- (const graphene_rect_t*)childBounds;

@end