/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskInsetShadowNode.h"

@implementation OGGskInsetShadowNode

- (instancetype)initWithOutline:(const GskRoundedRect*)outline color:(const GdkRGBA*)color dx:(float)dx dy:(float)dy spread:(float)spread blurRadius:(float)blurRadius
{
	GskInsetShadowNode* gobjectValue = GSK_INSET_SHADOW_NODE(gsk_inset_shadow_node_new(outline, color, dx, dy, spread, blurRadius));

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

- (GskInsetShadowNode*)castedGObject
{
	return GSK_INSET_SHADOW_NODE([self gObject]);
}

- (float)blurRadius
{
	float returnValue = gsk_inset_shadow_node_get_blur_radius([self castedGObject]);

	return returnValue;
}

- (const GdkRGBA*)color
{
	const GdkRGBA* returnValue = gsk_inset_shadow_node_get_color([self castedGObject]);

	return returnValue;
}

- (float)dx
{
	float returnValue = gsk_inset_shadow_node_get_dx([self castedGObject]);

	return returnValue;
}

- (float)dy
{
	float returnValue = gsk_inset_shadow_node_get_dy([self castedGObject]);

	return returnValue;
}

- (const GskRoundedRect*)outline
{
	const GskRoundedRect* returnValue = gsk_inset_shadow_node_get_outline([self castedGObject]);

	return returnValue;
}

- (float)spread
{
	float returnValue = gsk_inset_shadow_node_get_spread([self castedGObject]);

	return returnValue;
}


@end