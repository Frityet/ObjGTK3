/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


@class OGGdkTexture;

/**
 * A render node for a `GdkTexture`.
 *
 */
@interface OGGskTextureNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithTexture:(OGGdkTexture*)texture bounds:(const graphene_rect_t*)bounds;

/**
 * Methods
 */

- (GskTextureNode*)castedGObject;

/**
 * Retrieves the `GdkTexture` used when creating this `GskRenderNode`.
 *
 * @return the `GdkTexture`
 */
- (OGGdkTexture*)texture;

@end