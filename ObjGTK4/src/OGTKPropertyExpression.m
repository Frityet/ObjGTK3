/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKPropertyExpression.h"

@implementation OGTKPropertyExpression

- (instancetype)initWithThisType:(GType)thisType expression:(GtkExpression*)expression propertyName:(OFString*)propertyName
{
	GtkPropertyExpression* gobjectValue = GTK_PROPERTY_EXPRESSION(gtk_property_expression_new(thisType, expression, [propertyName UTF8String]));

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

- (instancetype)initForPspecWithExpression:(GtkExpression*)expression pspec:(GParamSpec*)pspec
{
	GtkPropertyExpression* gobjectValue = GTK_PROPERTY_EXPRESSION(gtk_property_expression_new_for_pspec(expression, pspec));

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

- (GtkPropertyExpression*)castedGObject
{
	return GTK_PROPERTY_EXPRESSION([self gObject]);
}

- (GtkExpression*)expression
{
	GtkExpression* returnValue = gtk_property_expression_get_expression([self castedGObject]);

	return returnValue;
}

- (GParamSpec*)pspec
{
	GParamSpec* returnValue = gtk_property_expression_get_pspec([self castedGObject]);

	return returnValue;
}


@end