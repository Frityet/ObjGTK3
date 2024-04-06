/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkNoOpObjectFactory.h"

@implementation OGAtkNoOpObjectFactory

- (instancetype)init
{
	AtkNoOpObjectFactory* gobjectValue = ATK_NO_OP_OBJECT_FACTORY(atk_no_op_object_factory_new());

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

- (AtkNoOpObjectFactory*)castedGObject
{
	return ATK_NO_OP_OBJECT_FACTORY([self gObject]);
}


@end