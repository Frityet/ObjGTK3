/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKCClosureExpression.h"

@implementation OGTKCClosureExpression

- (instancetype)initWithValueType:(GType)valueType marshal:(GClosureMarshal)marshal nparams:(guint)nparams params:(GtkExpression**)params callbackFunc:(GCallback)callbackFunc userData:(gpointer)userData userDestroy:(GClosureNotify)userDestroy
{
	GtkCClosureExpression* gobjectValue = GTK_CCLOSURE_EXPRESSION(gtk_cclosure_expression_new(valueType, marshal, nparams, params, callbackFunc, userData, userDestroy));

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

- (GtkCClosureExpression*)castedGObject
{
	return GTK_CCLOSURE_EXPRESSION([self gObject]);
}


@end