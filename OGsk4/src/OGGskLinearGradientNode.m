/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskLinearGradientNode.h"

@implementation OGGskLinearGradientNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds start:(const graphene_point_t*)start end:(const graphene_point_t*)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops
{
	GskLinearGradientNode* gobjectValue = GSK_LINEAR_GRADIENT_NODE(gsk_linear_gradient_node_new(bounds, start, end, colorStops, ncolorStops));

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

- (GskLinearGradientNode*)castedGObject
{
	return GSK_LINEAR_GRADIENT_NODE([self gObject]);
}

- (const GskColorStop*)colorStops:(gsize*)nstops
{
	const GskColorStop* returnValue = gsk_linear_gradient_node_get_color_stops([self castedGObject], nstops);

	return returnValue;
}

- (const graphene_point_t*)end
{
	const graphene_point_t* returnValue = gsk_linear_gradient_node_get_end([self castedGObject]);

	return returnValue;
}

- (gsize)ncolorStops
{
	gsize returnValue = gsk_linear_gradient_node_get_n_color_stops([self castedGObject]);

	return returnValue;
}

- (const graphene_point_t*)start
{
	const graphene_point_t* returnValue = gsk_linear_gradient_node_get_start([self castedGObject]);

	return returnValue;
}


@end