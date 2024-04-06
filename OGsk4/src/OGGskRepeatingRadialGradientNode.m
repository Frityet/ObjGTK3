/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskRepeatingRadialGradientNode.h"

@implementation OGGskRepeatingRadialGradientNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center hradius:(float)hradius vradius:(float)vradius start:(float)start end:(float)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops
{
	GskRepeatingRadialGradientNode* gobjectValue = (gsk_repeating_radial_gradient_node_new(bounds, center, hradius, vradius, start, end, colorStops, ncolorStops));

	@try {
		self = [super initWithGObject:gobjectValue];
	} @catch (id e) {
		g_object_unref(gobjectValue);
		[self release];
		@throw e;
	}

	g_object_unref(gobjectValue);
	return self;
}




@end