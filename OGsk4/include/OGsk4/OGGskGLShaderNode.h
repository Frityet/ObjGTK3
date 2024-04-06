/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>
#import "OGGskRenderNode.h"




@class OGGskGLShader;

/**
 * A render node using a GL shader when drawing its children nodes.
 *
 */
@interface OGGskGLShaderNode : OGGskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithShader:(OGGskGLShader*)shader bounds:(const graphene_rect_t*)bounds args:(GBytes*)args children:(GskRenderNode**)children nchildren:(guint)nchildren;

/**
 * Methods
 */

- (GskGLShaderNode*)castedGObject;

/**
 * Gets args for the node.
 *
 * @return A `GBytes` with the uniform arguments
 */
- (GBytes*)args;

/**
 * Gets one of the children.
 *
 * @param idx the position of the child to get
 * @return the @idx'th child of @node
 */
- (GskRenderNode*)child:(guint)idx;

/**
 * Returns the number of children
 *
 * @return The number of children
 */
- (guint)nchildren;

/**
 * Gets shader code for the node.
 *
 * @return the `GskGLShader` shader
 */
- (OGGskGLShader*)shader;

@end
