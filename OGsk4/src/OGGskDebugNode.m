/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGskDebugNode.h"

@implementation OGGskDebugNode

- (instancetype)initWithChild:(GskRenderNode*)child message:(char*)message
{
	GskDebugNode* gobjectValue = GSK_DEBUG_NODE(gsk_debug_node_new(child, message));

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

- (GskDebugNode*)castedGObject
{
	return GSK_DEBUG_NODE([self gObject]);
}

- (GskRenderNode*)child
{
	GskRenderNode* returnValue = gsk_debug_node_get_child([self castedGObject]);

	return returnValue;
}

- (OFString*)message
{
	const char* gobjectValue = gsk_debug_node_get_message([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}


@end