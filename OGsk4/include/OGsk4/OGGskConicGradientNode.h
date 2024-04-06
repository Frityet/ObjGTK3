/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node for a conic gradient.
 *
 */
@interface OGGskConicGradientNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center rotation:(float)rotation colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops;

/**
 * Methods
 */

- (GskConicGradientNode*)castedGObject;

/**
 * Retrieves the angle for the gradient in radians, normalized in [0, 2 * PI].
 *
 * The angle is starting at the top and going clockwise, as expressed
 * in the css specification:
 *
 *     angle = 90 - gsk_conic_gradient_node_get_rotation()
 *
 * @return the angle for the gradient
 */
- (float)angle;

/**
 * Retrieves the center pointer for the gradient.
 *
 * @return the center point for the gradient
 */
- (const graphene_point_t*)center;

/**
 * Retrieves the color stops in the gradient.
 *
 * @param nstops the number of color stops in the returned array
 * @return the color stops in the gradient
 */
- (const GskColorStop*)colorStops:(gsize*)nstops;

/**
 * Retrieves the number of color stops in the gradient.
 *
 * @return the number of color stops
 */
- (gsize)ncolorStops;

/**
 * Retrieves the rotation for the gradient in degrees.
 *
 * @return the rotation for the gradient
 */
- (float)rotation;

@end
