/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node applying a blending function between its two child nodes.
 *
 */
@interface OGGskBlendNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBottom:(GskRenderNode*)bottom top:(GskRenderNode*)top blendMode:(GskBlendMode)blendMode;

/**
 * Methods
 */

- (GskBlendNode*)castedGObject;

/**
 * Retrieves the blend mode used by @node.
 *
 * @return the blend mode
 */
- (GskBlendMode)blendMode;

/**
 * Retrieves the bottom `GskRenderNode` child of the @node.
 *
 * @return the bottom child node
 */
- (GskRenderNode*)bottomChild;

/**
 * Retrieves the top `GskRenderNode` child of the @node.
 *
 * @return the top child node
 */
- (GskRenderNode*)topChild;

@end
