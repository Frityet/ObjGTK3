/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node for an inset shadow.
 *
 */
@interface OGGskInsetShadowNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithOutline:(const GskRoundedRect*)outline color:(const GdkRGBA*)color dx:(float)dx dy:(float)dy spread:(float)spread blurRadius:(float)blurRadius;

/**
 * Methods
 */

- (GskInsetShadowNode*)castedGObject;

/**
 * Retrieves the blur radius to apply to the shadow.
 *
 * @return the blur radius, in pixels
 */
- (float)blurRadius;

/**
 * Retrieves the color of the inset shadow.
 *
 * @return the color of the shadow
 */
- (const GdkRGBA*)color;

/**
 * Retrieves the horizontal offset of the inset shadow.
 *
 * @return an offset, in pixels
 */
- (float)dx;

/**
 * Retrieves the vertical offset of the inset shadow.
 *
 * @return an offset, in pixels
 */
- (float)dy;

/**
 * Retrieves the outline rectangle of the inset shadow.
 *
 * @return a rounded rectangle
 */
- (const GskRoundedRect*)outline;

/**
 * Retrieves how much the shadow spreads inwards.
 *
 * @return the size of the shadow, in pixels
 */
- (float)spread;

@end