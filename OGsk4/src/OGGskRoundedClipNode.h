/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node applying a rounded rectangle clip to its single child.
 *
 */
@interface OGGskRoundedClipNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child clip:(const GskRoundedRect*)clip;

/**
 * Methods
 */

- (GskRoundedClipNode*)castedGObject;

/**
 * Gets the child node that is getting clipped by the given @node.
 *
 * @return The child that is getting clipped
 */
- (GskRenderNode*)child;

/**
 * Retrieves the rounded rectangle used to clip the contents of the @node.
 *
 * @return a rounded rectangle
 */
- (const GskRoundedRect*)clip;

@end