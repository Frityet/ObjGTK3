/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node masking one child node with another.
 *
 */
@interface OGGskMaskNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithSource:(GskRenderNode*)source mask:(GskRenderNode*)mask maskMode:(GskMaskMode)maskMode;

/**
 * Methods
 */

- (GskMaskNode*)castedGObject;

/**
 * Retrieves the mask `GskRenderNode` child of the @node.
 *
 * @return the mask child node
 */
- (GskRenderNode*)mask;

/**
 * Retrieves the mask mode used by @node.
 *
 * @return the mask mode
 */
- (GskMaskMode)maskMode;

/**
 * Retrieves the source `GskRenderNode` child of the @node.
 *
 * @return the source child node
 */
- (GskRenderNode*)source;

@end