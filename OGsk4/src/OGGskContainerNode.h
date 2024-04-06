/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node that can contain other render nodes.
 *
 */
@interface OGGskContainerNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithChildren:(GskRenderNode**)children nchildren:(guint)nchildren;

/**
 * Methods
 */

- (GskContainerNode*)castedGObject;

/**
 * Gets one of the children of @container.
 *
 * @param idx the position of the child to get
 * @return the @idx'th child of @container
 */
- (GskRenderNode*)child:(guint)idx;

/**
 * Retrieves the number of direct children of @node.
 *
 * @return the number of children of the `GskRenderNode`
 */
- (guint)nchildren;

@end