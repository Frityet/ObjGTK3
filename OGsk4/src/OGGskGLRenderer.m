/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskGLRenderer.h"

#import "OGGskRenderer.h"

@implementation OGGskGLRenderer

- (instancetype)init
{
	GskGLRenderer* gobjectValue = GSK_GL_RENDERER(gsk_gl_renderer_new());

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

- (GskGLRenderer*)castedGObject
{
	return GSK_GL_RENDERER([self gObject]);
}


@end