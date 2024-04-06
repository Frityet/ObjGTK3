/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node drawing one or more shadows behind its single child node.
 *
 */
@interface OGGskShadowNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child shadows:(const GskShadow*)shadows nshadows:(gsize)nshadows;

/**
 * Methods
 */

- (GskShadowNode*)castedGObject;

/**
 * Retrieves the child `GskRenderNode` of the shadow @node.
 *
 * @return the child render node
 */
- (GskRenderNode*)child;

/**
 * Retrieves the number of shadows in the @node.
 *
 * @return the number of shadows.
 */
- (gsize)nshadows;

/**
 * Retrieves the shadow data at the given index @i.
 *
 * @param i the given index
 * @return the shadow data
 */
- (const GskShadow*)shadow:(gsize)i;

@end