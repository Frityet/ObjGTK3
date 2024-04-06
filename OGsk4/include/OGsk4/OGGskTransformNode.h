/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node applying a `GskTransform` to its single child node.
 *
 */
@interface OGGskTransformNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child transform:(GskTransform*)transform;

/**
 * Methods
 */

- (GskTransformNode*)castedGObject;

/**
 * Gets the child node that is getting transformed by the given @node.
 *
 * @return The child that is getting transformed
 */
- (GskRenderNode*)child;

/**
 * Retrieves the `GskTransform` used by the @node.
 *
 * @return a `GskTransform`
 */
- (GskTransform*)transform;

@end
