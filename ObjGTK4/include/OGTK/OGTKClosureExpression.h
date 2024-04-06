/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>

#import "OGTKExpression.h"

/**
 * An expression using a custom `GClosure` to compute the value from
 * its parameters.
 *
 */
@interface OGTKClosureExpression : OGTKExpression
{

}


/**
 * Constructors
 */
- (instancetype)initWithValueType:(GType)valueType closure:(GClosure*)closure nparams:(guint)nparams params:(GtkExpression**)params;

/**
 * Methods
 */

- (GtkClosureExpression*)castedGObject;

@end
