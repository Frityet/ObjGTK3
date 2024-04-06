/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




@class OGGdkTexture;

/**
 * A render node for a `GdkTexture`.
 *
 */
@interface OGGskTextureScaleNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithTexture:(OGGdkTexture*)texture bounds:(const graphene_rect_t*)bounds filter:(GskScalingFilter)filter;

/**
 * Methods
 */

- (GskTextureScaleNode*)castedGObject;

/**
 * Retrieves the `GskScalingFilter` used when creating this `GskRenderNode`.
 *
 * @return the `GskScalingFilter`
 */
- (GskScalingFilter)filter;

/**
 * Retrieves the `GdkTexture` used when creating this `GskRenderNode`.
 *
 * @return the `GdkTexture`
 */
- (OGGdkTexture*)texture;

@end
