/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkNoOpObject.h"

@implementation OGAtkNoOpObject

- (instancetype)init:(GObject*)obj
{
	AtkNoOpObject* gobjectValue = ATK_NO_OP_OBJECT(atk_no_op_object_new(obj));

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

- (AtkNoOpObject*)castedGObject
{
	return ATK_NO_OP_OBJECT([self gObject]);
}


@end