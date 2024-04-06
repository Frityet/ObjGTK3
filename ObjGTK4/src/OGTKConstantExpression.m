/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKConstantExpression.h"

@implementation OGTKConstantExpression

- (instancetype)initForValue:(const GValue*)value
{
	GtkConstantExpression* gobjectValue = GTK_EXPRESSION(gtk_constant_expression_new_for_value(value));

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

- (const GValue*)value
{
	const GValue* returnValue = gtk_constant_expression_get_value([self castedGObject]);

	return returnValue;
}


@end
