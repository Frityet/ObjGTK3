/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKObjectExpression.h"

@implementation OGTKObjectExpression

- (instancetype)init:(GObject*)object
{
	GtkObjectExpression* gobjectValue = GTK_OBJECT_EXPRESSION(gtk_object_expression_new(object));

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

- (GtkObjectExpression*)castedGObject
{
	return GTK_OBJECT_EXPRESSION([self gObject]);
}

- (GObject*)object
{
	GObject* returnValue = gtk_object_expression_get_object([self castedGObject]);

	return returnValue;
}


@end