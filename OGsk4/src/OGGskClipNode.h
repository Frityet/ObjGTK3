/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node applying a rectangular clip to its single child node.
 *
 */
@interface OGGskClipNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child clip:(const graphene_rect_t*)clip;

/**
 * Methods
 */

- (GskClipNode*)castedGObject;

/**
 * Gets the child node that is getting clipped by the given @node.
 *
 * @return The child that is getting clipped
 */
- (GskRenderNode*)child;

/**
 * Retrieves the clip rectangle for @node.
 *
 * @return a clip rectangle
 */
- (const graphene_rect_t*)clip;

@end