/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskNglRenderer.h"

#import "OGGskRenderer.h"

@implementation OGGskNglRenderer

- (instancetype)init
{
	GskNglRenderer* gobjectValue = GSK_NGL_RENDERER(gsk_ngl_renderer_new());

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

- (GskNglRenderer*)castedGObject
{
	return GSK_NGL_RENDERER([self gObject]);
}


@end