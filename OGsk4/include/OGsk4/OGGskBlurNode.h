/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node applying a blur effect to its single child.
 *
 */
@interface OGGskBlurNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child radius:(float)radius;

/**
 * Methods
 */

- (GskBlurNode*)castedGObject;

/**
 * Retrieves the child `GskRenderNode` of the blur @node.
 *
 * @return the blurred child node
 */
- (GskRenderNode*)child;

/**
 * Retrieves the blur radius of the @node.
 *
 * @return the blur radius
 */
- (float)radius;

@end
