/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node that emits a debugging message when drawing its
 * child node.
 *
 */
@interface OGGskDebugNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChild:(GskRenderNode*)child message:(char*)message;

/**
 * Methods
 */

- (GskDebugNode*)castedGObject;

/**
 * Gets the child node that is getting drawn by the given @node.
 *
 * @return the child `GskRenderNode`
 */
- (GskRenderNode*)child;

/**
 * Gets the debug message that was set on this node
 *
 * @return The debug message
 */
- (OFString*)message;

@end