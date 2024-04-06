/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gsk/gsk.h>


/**
 * A render node cross fading between two child nodes.
 *
 */
@interface OGGskCrossFadeNode : GskRenderNode
{

}


/**
 * Constructors
 */
- (instancetype)initWithStart:(GskRenderNode*)start end:(GskRenderNode*)end progress:(float)progress;

/**
 * Methods
 */

- (GskCrossFadeNode*)castedGObject;

/**
 * Retrieves the child `GskRenderNode` at the end of the cross-fade.
 *
 * @return a `GskRenderNode`
 */
- (GskRenderNode*)endChild;

/**
 * Retrieves the progress value of the cross fade.
 *
 * @return the progress value, between 0 and 1
 */
- (float)progress;

/**
 * Retrieves the child `GskRenderNode` at the beginning of the cross-fade.
 *
 * @return a `GskRenderNode`
 */
- (GskRenderNode*)startChild;

@end