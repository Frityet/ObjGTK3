/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node for a repeating radial gradient.
 *
 */
@interface OGGskRepeatingRadialGradientNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center hradius:(float)hradius vradius:(float)vradius start:(float)start end:(float)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops;

/**
 * Methods
 */

- (GskRepeatingRadialGradientNode*)castedGObject;

@end