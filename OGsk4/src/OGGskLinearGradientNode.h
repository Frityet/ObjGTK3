/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node for a linear gradient.
 *
 */
@interface OGGskLinearGradientNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds start:(const graphene_point_t*)start end:(const graphene_point_t*)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops;

/**
 * Methods
 */

- (GskLinearGradientNode*)castedGObject;

/**
 * Retrieves the color stops in the gradient.
 *
 * @param nstops the number of color stops in the returned array
 * @return the color stops in the gradient
 */
- (const GskColorStop*)colorStops:(gsize*)nstops;

/**
 * Retrieves the final point of the linear gradient.
 *
 * @return the final point
 */
- (const graphene_point_t*)end;

/**
 * Retrieves the number of color stops in the gradient.
 *
 * @return the number of color stops
 */
- (gsize)ncolorStops;

/**
 * Retrieves the initial point of the linear gradient.
 *
 * @return the initial point
 */
- (const graphene_point_t*)start;

@end