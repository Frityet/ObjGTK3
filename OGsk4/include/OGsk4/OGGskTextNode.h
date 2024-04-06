/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




@class OGPangoFont;

/**
 * A render node drawing a set of glyphs.
 *
 */
@interface OGGskTextNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithFont:(OGPangoFont*)font glyphs:(PangoGlyphString*)glyphs color:(const GdkRGBA*)color offset:(const graphene_point_t*)offset;

/**
 * Methods
 */

- (GskTextNode*)castedGObject;

/**
 * Retrieves the color used by the text @node.
 *
 * @return the text color
 */
- (const GdkRGBA*)color;

/**
 * Returns the font used by the text @node.
 *
 * @return the font
 */
- (OGPangoFont*)font;

/**
 * Retrieves the glyph information in the @node.
 *
 * @param nglyphs the number of glyphs returned
 * @return the glyph information
 */
- (const PangoGlyphInfo*)glyphs:(guint*)nglyphs;

/**
 * Retrieves the number of glyphs in the text node.
 *
 * @return the number of glyphs
 */
- (guint)numGlyphs;

/**
 * Retrieves the offset applied to the text.
 *
 * @return a point with the horizontal and vertical offsets
 */
- (const graphene_point_t*)offset;

/**
 * Checks whether the text @node has color glyphs.
 *
 * @return %TRUE if the text node has color glyphs
 */
- (bool)hasColorGlyphs;

@end
