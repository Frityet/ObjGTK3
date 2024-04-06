/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskGLShaderNode.h"

#import "OGGskGLShader.h"

@implementation OGGskGLShaderNode

- (instancetype)initWithShader:(OGGskGLShader*)shader bounds:(const graphene_rect_t*)bounds args:(GBytes*)args children:(GskRenderNode**)children nchildren:(guint)nchildren
{
	GskGLShaderNode* gobjectValue = (gsk_gl_shader_node_new([shader castedGObject], bounds, args, children, nchildren));

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



- (GBytes*)args
{
	GBytes* returnValue = gsk_gl_shader_node_get_args([self castedGObject]);

	return returnValue;
}

- (GskRenderNode*)child:(guint)idx
{
	GskRenderNode* returnValue = gsk_gl_shader_node_get_child([self castedGObject], idx);

	return returnValue;
}

- (guint)nchildren
{
	guint returnValue = gsk_gl_shader_node_get_n_children([self castedGObject]);

	return returnValue;
}

- (OGGskGLShader*)shader
{
	GskGLShader* gobjectValue = GSK_GL_SHADER(gsk_gl_shader_node_get_shader([self castedGObject]));

	OGGskGLShader* returnValue = [OGGskGLShader withGObject:gobjectValue];
	return returnValue;
}


@end
