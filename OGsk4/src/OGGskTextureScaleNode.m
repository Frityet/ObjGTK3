/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskTextureScaleNode.h"

#import <OGdk4/OGGdkTexture.h>

@implementation OGGskTextureScaleNode

- (instancetype)initWithTexture:(OGGdkTexture*)texture bounds:(const graphene_rect_t*)bounds filter:(GskScalingFilter)filter
{
	GskTextureScaleNode* gobjectValue = GSK_TEXTURE_SCALE_NODE(gsk_texture_scale_node_new([texture castedGObject], bounds, filter));

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

- (GskTextureScaleNode*)castedGObject
{
	return GSK_TEXTURE_SCALE_NODE([self gObject]);
}

- (GskScalingFilter)filter
{
	GskScalingFilter returnValue = gsk_texture_scale_node_get_filter([self castedGObject]);

	return returnValue;
}

- (OGGdkTexture*)texture
{
	GdkTexture* gobjectValue = GDK_TEXTURE(gsk_texture_scale_node_get_texture([self castedGObject]));

	OGGdkTexture* returnValue = [OGGdkTexture withGObject:gobjectValue];
	return returnValue;
}


@end