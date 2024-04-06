/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskCairoNode.h"

@implementation OGGskCairoNode

- (instancetype)init:(const graphene_rect_t*)bounds
{
	GskCairoNode* gobjectValue = GSK_CAIRO_NODE(gsk_cairo_node_new(bounds));

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

- (GskCairoNode*)castedGObject
{
	return GSK_CAIRO_NODE([self gObject]);
}

- (cairo_t*)drawContext
{
	cairo_t* returnValue = gsk_cairo_node_get_draw_context([self castedGObject]);

	return returnValue;
}

- (cairo_surface_t*)surface
{
	cairo_surface_t* returnValue = gsk_cairo_node_get_surface([self castedGObject]);

	return returnValue;
}


@end