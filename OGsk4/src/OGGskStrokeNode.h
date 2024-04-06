/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node that will fill the area determined by stroking the the given
 * [struct@Gsk.Path] using the [struct@Gsk.Stroke] attributes.
 *
 */
@interface OGGskStrokeNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child path:(GskPath*)path stroke:(const GskStroke*)stroke;

/**
 * Methods
 */

- (GskStrokeNode*)castedGObject;

/**
 * Gets the child node that is getting drawn by the given @node.
 *
 * @return The child that is getting drawn
 */
- (GskRenderNode*)child;

/**
 * Retrieves the path that will be stroked with the contents of
 * the @node.
 *
 * @return a #GskPath
 */
- (GskPath*)path;

/**
 * Retrieves the stroke attributes used in this @node.
 *
 * @return a #GskStroke
 */
- (const GskStroke*)stroke;

@end