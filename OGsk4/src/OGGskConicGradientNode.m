/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskConicGradientNode.h"

@implementation OGGskConicGradientNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds center:(const graphene_point_t*)center rotation:(float)rotation colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops
{
	GskConicGradientNode* gobjectValue = GSK_CONIC_GRADIENT_NODE(gsk_conic_gradient_node_new(bounds, center, rotation, colorStops, ncolorStops));

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

- (GskConicGradientNode*)castedGObject
{
	return GSK_CONIC_GRADIENT_NODE([self gObject]);
}

- (float)angle
{
	float returnValue = gsk_conic_gradient_node_get_angle([self castedGObject]);

	return returnValue;
}

- (const graphene_point_t*)center
{
	const graphene_point_t* returnValue = gsk_conic_gradient_node_get_center([self castedGObject]);

	return returnValue;
}

- (const GskColorStop*)colorStops:(gsize*)nstops
{
	const GskColorStop* returnValue = gsk_conic_gradient_node_get_color_stops([self castedGObject], nstops);

	return returnValue;
}

- (gsize)ncolorStops
{
	gsize returnValue = gsk_conic_gradient_node_get_n_color_stops([self castedGObject]);

	return returnValue;
}

- (float)rotation
{
	float returnValue = gsk_conic_gradient_node_get_rotation([self castedGObject]);

	return returnValue;
}


@end