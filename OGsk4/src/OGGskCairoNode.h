/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node for a Cairo surface.
 *
 */
@interface OGGskCairoNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)init:(const graphene_rect_t*)bounds;

/**
 * Methods
 */

- (GskCairoNode*)castedGObject;

/**
 * Creates a Cairo context for drawing using the surface associated
 * to the render node.
 * 
 * If no surface exists yet, a surface will be created optimized for
 * rendering to @renderer.
 *
 * @return a Cairo context used for drawing; use
 *   cairo_destroy() when done drawing
 */
- (cairo_t*)drawContext;

/**
 * Retrieves the Cairo surface used by the render node.
 *
 * @return a Cairo surface
 */
- (cairo_surface_t*)surface;

@end