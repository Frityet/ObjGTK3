/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node filling the area given by [struct@Gsk.Path]
 * and [enum@Gsk.FillRule] with the child node.
 *
 */
@interface OGGskFillNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child path:(GskPath*)path fillRule:(GskFillRule)fillRule;

/**
 * Methods
 */

- (GskFillNode*)castedGObject;

/**
 * Gets the child node that is getting drawn by the given @node.
 *
 * @return The child that is getting drawn
 */
- (GskRenderNode*)child;

/**
 * Retrieves the fill rule used to determine how the path is filled.
 *
 * @return a `GskFillRule`
 */
- (GskFillRule)fillRule;

/**
 * Retrieves the path used to describe the area filled with the contents of
 * the @node.
 *
 * @return a `GskPath`
 */
- (GskPath*)path;

@end