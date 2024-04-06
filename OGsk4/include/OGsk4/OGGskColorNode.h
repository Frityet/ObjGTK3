/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node for a solid color.
 *
 */
@interface OGGskColorNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithRgba:(const GdkRGBA*)rgba bounds:(const graphene_rect_t*)bounds;

/**
 * Methods
 */

- (GskColorNode*)castedGObject;

/**
 * Retrieves the color of the given @node.
 *
 * @return the color of the node
 */
- (const GdkRGBA*)color;

@end
