/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskMaskNode.h"

@implementation OGGskMaskNode

- (instancetype)initWithSource:(GskRenderNode*)source mask:(GskRenderNode*)mask maskMode:(GskMaskMode)maskMode
{
	GskMaskNode* gobjectValue = GSK_MASK_NODE(gsk_mask_node_new(source, mask, maskMode));

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

- (GskMaskNode*)castedGObject
{
	return GSK_MASK_NODE([self gObject]);
}

- (GskRenderNode*)mask
{
	GskRenderNode* returnValue = gsk_mask_node_get_mask([self castedGObject]);

	return returnValue;
}

- (GskMaskMode)maskMode
{
	GskMaskMode returnValue = gsk_mask_node_get_mask_mode([self castedGObject]);

	return returnValue;
}

- (GskRenderNode*)source
{
	GskRenderNode* returnValue = gsk_mask_node_get_source([self castedGObject]);

	return returnValue;
}


@end