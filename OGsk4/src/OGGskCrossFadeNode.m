/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskCrossFadeNode.h"

@implementation OGGskCrossFadeNode

- (instancetype)initWithStart:(GskRenderNode*)start end:(GskRenderNode*)end progress:(float)progress
{
	GskCrossFadeNode* gobjectValue = (gsk_cross_fade_node_new(start, end, progress));

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



- (GskRenderNode*)endChild
{
	GskRenderNode* returnValue = gsk_cross_fade_node_get_end_child([self castedGObject]);

	return returnValue;
}

- (float)progress
{
	float returnValue = gsk_cross_fade_node_get_progress([self castedGObject]);

	return returnValue;
}

- (GskRenderNode*)startChild
{
	GskRenderNode* returnValue = gsk_cross_fade_node_get_start_child([self castedGObject]);

	return returnValue;
}


@end