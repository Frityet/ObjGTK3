/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskRadialGradientNode.h"

@implementation OGGskRadialGradientNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center hradius:(float)hradius vradius:(float)vradius start:(float)start end:(float)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops
{
	GskRadialGradientNode* gobjectValue = (gsk_radial_gradient_node_new(bounds, center, hradius, vradius, start, end, colorStops, ncolorStops));

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



- (const graphene_point_t*)center
{
	const graphene_point_t* returnValue = gsk_radial_gradient_node_get_center([self castedGObject]);

	return returnValue;
}

- (const GskColorStop*)colorStops:(gsize*)nstops
{
	const GskColorStop* returnValue = gsk_radial_gradient_node_get_color_stops([self castedGObject], nstops);

	return returnValue;
}

- (float)end
{
	float returnValue = gsk_radial_gradient_node_get_end([self castedGObject]);

	return returnValue;
}

- (float)hradius
{
	float returnValue = gsk_radial_gradient_node_get_hradius([self castedGObject]);

	return returnValue;
}

- (gsize)ncolorStops
{
	gsize returnValue = gsk_radial_gradient_node_get_n_color_stops([self castedGObject]);

	return returnValue;
}

- (float)start
{
	float returnValue = gsk_radial_gradient_node_get_start([self castedGObject]);

	return returnValue;
}

- (float)vradius
{
	float returnValue = gsk_radial_gradient_node_get_vradius([self castedGObject]);

	return returnValue;
}


@end