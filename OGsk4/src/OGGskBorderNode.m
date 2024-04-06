/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskBorderNode.h"

@implementation OGGskBorderNode

- (instancetype)initWithOutline:(const GskRoundedRect*)outline borderWidth:(const float*)borderWidth borderColor:(const GdkRGBA*)borderColor
{
	GskBorderNode* gobjectValue = GSK_BORDER_NODE(gsk_border_node_new(outline, borderWidth, borderColor));

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

- (GskBorderNode*)castedGObject
{
	return GSK_BORDER_NODE([self gObject]);
}

- (const GdkRGBA*)colors
{
	const GdkRGBA* returnValue = gsk_border_node_get_colors([self castedGObject]);

	return returnValue;
}

- (const GskRoundedRect*)outline
{
	const GskRoundedRect* returnValue = gsk_border_node_get_outline([self castedGObject]);

	return returnValue;
}

- (const float*)widths
{
	const float* returnValue = gsk_border_node_get_widths([self castedGObject]);

	return returnValue;
}


@end