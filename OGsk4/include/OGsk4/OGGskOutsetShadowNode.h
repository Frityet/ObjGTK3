/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node for an outset shadow.
 *
 */
@interface OGGskOutsetShadowNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithOutline:(const GskRoundedRect*)outline color:(const GdkRGBA*)color dx:(float)dx dy:(float)dy spread:(float)spread blurRadius:(float)blurRadius;

/**
 * Methods
 */

- (GskOutsetShadowNode*)castedGObject;

/**
 * Retrieves the blur radius of the shadow.
 *
 * @return the blur radius, in pixels
 */
- (float)blurRadius;

/**
 * Retrieves the color of the outset shadow.
 *
 * @return a color
 */
- (const GdkRGBA*)color;

/**
 * Retrieves the horizontal offset of the outset shadow.
 *
 * @return an offset, in pixels
 */
- (float)dx;

/**
 * Retrieves the vertical offset of the outset shadow.
 *
 * @return an offset, in pixels
 */
- (float)dy;

/**
 * Retrieves the outline rectangle of the outset shadow.
 *
 * @return a rounded rectangle
 */
- (const GskRoundedRect*)outline;

/**
 * Retrieves how much the shadow spreads outwards.
 *
 * @return the size of the shadow, in pixels
 */
- (float)spread;

@end
