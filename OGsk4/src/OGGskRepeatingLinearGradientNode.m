/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskRepeatingLinearGradientNode.h"

@implementation OGGskRepeatingLinearGradientNode

- (instancetype)initWithBounds:(const graphene_rect_t*)bounds start:(const graphene_point_t*)start end:(const graphene_point_t*)end colorStops:(const GskColorStop*)colorStops ncolorStops:(gsize)ncolorStops
{
	GskRepeatingLinearGradientNode* gobjectValue = (gsk_repeating_linear_gradient_node_new(bounds, start, end, colorStops, ncolorStops));

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
