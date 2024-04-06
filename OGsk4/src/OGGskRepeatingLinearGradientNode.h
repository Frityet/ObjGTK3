/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node for a repeating linear gradient.
 *
 */
@interface OGGskRepeatingLinearGradientNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithBounds:(const graphene_rect_t*)bounds start:(const graphene_point_t*)start end:(const graphene_point_t*)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops;

/**
 * Methods
 */

- (GskRepeatingLinearGradientNode*)castedGObject;

@end