/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKClosureExpression.h"

@implementation OGTKClosureExpression

- (instancetype)initWithValueType:(GType)valueType closure:(GClosure*)closure nparams:(guint)nparams params:(GtkExpression**)params
{
	GtkClosureExpression* gobjectValue = (gtk_closure_expression_new(valueType, closure, nparams, params));

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

@end
