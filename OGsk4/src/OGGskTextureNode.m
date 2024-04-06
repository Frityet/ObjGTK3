/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskTextureNode.h"

#import <OGdk4/OGGdkTexture.h>

@implementation OGGskTextureNode

- (instancetype)initWithTexture:(OGGdkTexture*)texture bounds:(const graphene_rect_t*)bounds
{
	GskTextureNode* gobjectValue = GSK_TEXTURE_NODE(gsk_texture_node_new([texture castedGObject], bounds));

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

- (GskTextureNode*)castedGObject
{
	return GSK_TEXTURE_NODE([self gObject]);
}

- (OGGdkTexture*)texture
{
	GdkTexture* gobjectValue = GDK_TEXTURE(gsk_texture_node_get_texture([self castedGObject]));

	OGGdkTexture* returnValue = [OGGdkTexture withGObject:gobjectValue];
	return returnValue;
}


@end