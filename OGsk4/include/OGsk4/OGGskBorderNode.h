/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




/**
 * A render node for a border.
 *
 */
@interface OGGskBorderNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithOutline:(const GskRoundedRect*)outline borderWidth:(const float*)borderWidth borderColor:(const GdkRGBA*)borderColor;

/**
 * Methods
 */

- (GskBorderNode*)castedGObject;

/**
 * Retrieves the colors of the border.
 *
 * @return an array of 4 `GdkRGBA` structs
 *     for the top, right, bottom and left color of the border
 */
- (const GdkRGBA*)colors;

/**
 * Retrieves the outline of the border.
 *
 * @return the outline of the border
 */
- (const GskRoundedRect*)outline;

/**
 * Retrieves the stroke widths of the border.
 *
 * @return an array of 4 floats
 *   for the top, right, bottom and left stroke width of the border,
 *   respectively
 */
- (const float*)widths;

@end
