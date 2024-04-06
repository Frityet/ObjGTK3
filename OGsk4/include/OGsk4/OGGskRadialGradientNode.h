/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node for a radial gradient.
 *
 */
@interface OGGskRadialGradientNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center hradius:(float)hradius vradius:(float)vradius start:(float)start end:(float)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops;

/**
 * Methods
 */

- (GskRadialGradientNode*)castedGObject;

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
 * Retrieves the end value for the gradient.
 *
 * @return the end value for the gradient
 */
- (float)end;

/**
 * Retrieves the horizontal radius for the gradient.
 *
 * @return the horizontal radius for the gradient
 */
- (float)hradius;

/**
 * Retrieves the number of color stops in the gradient.
 *
 * @return the number of color stops
 */
- (gsize)ncolorStops;

/**
 * Retrieves the start value for the gradient.
 *
 * @return the start value for the gradient
 */
- (float)start;

/**
 * Retrieves the vertical radius for the gradient.
 *
 * @return the vertical radius for the gradient
 */
- (float)vradius;

@end
