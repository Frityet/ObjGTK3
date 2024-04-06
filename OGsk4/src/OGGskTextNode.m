/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskTextNode.h"

#import <OGPango/OGPangoFont.h>

@implementation OGGskTextNode

- (instancetype)initWithFont:(OGPangoFont*)font glyphs:(PangoGlyphString*)glyphs color:(const GdkRGBA*)color offset:(const graphene_point_t*)offset
{
	GskTextNode* gobjectValue = (gsk_text_node_new([font castedGObject], glyphs, color, offset));

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



- (const GdkRGBA*)color
{
	const GdkRGBA* returnValue = gsk_text_node_get_color([self castedGObject]);

	return returnValue;
}

- (OGPangoFont*)font
{
	PangoFont* gobjectValue = PANGO_FONT(gsk_text_node_get_font([self castedGObject]));

	OGPangoFont* returnValue = [OGPangoFont withGObject:gobjectValue];
	return returnValue;
}

- (const PangoGlyphInfo*)glyphs:(guint*)nglyphs
{
	const PangoGlyphInfo* returnValue = gsk_text_node_get_glyphs([self castedGObject], nglyphs);

	return returnValue;
}

- (guint)numGlyphs
{
	guint returnValue = gsk_text_node_get_num_glyphs([self castedGObject]);

	return returnValue;
}

- (const graphene_point_t*)offset
{
	const graphene_point_t* returnValue = gsk_text_node_get_offset([self castedGObject]);

	return returnValue;
}

- (bool)hasColorGlyphs
{
	bool returnValue = gsk_text_node_has_color_glyphs([self castedGObject]);

	return returnValue;
}


@end