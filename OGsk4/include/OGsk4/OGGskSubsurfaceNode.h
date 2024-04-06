/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node that potentially diverts a part of the scene graph to a subsurface.
 *
 */
@interface OGGskSubsurfaceNode : OGGskRenderNode
{

}

/**
 * Functions
 */

/**
 * Gets the subsurface that was set on this node
 *
 * @param node a debug `GskRenderNode`
 * @return the subsurface
 */
+ (gpointer)subsurface:(const GskRenderNode*)node;

/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child subsurface:(gpointer)subsurface;

/**
 * Methods
 */

- (GskSubsurfaceNode*)castedGObject;

/**
 * Gets the child node that is getting drawn by the given @node.
 *
 * @return the child `GskRenderNode`
 */
- (GskRenderNode*)child;

@end
