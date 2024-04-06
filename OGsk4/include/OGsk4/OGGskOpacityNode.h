/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node controlling the opacity of its single child node.
 *
 */
@interface OGGskOpacityNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child opacity:(float)opacity;

/**
 * Methods
 */

- (GskOpacityNode*)castedGObject;

/**
 * Gets the child node that is getting opacityed by the given @node.
 *
 * @return The child that is getting opacityed
 */
- (GskRenderNode*)child;

/**
 * Gets the transparency factor for an opacity node.
 *
 * @return the opacity factor
 */
- (float)opacity;

@end
