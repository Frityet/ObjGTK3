/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>

#import "OGTKExpression.h"

/**
 * A variant of `GtkClosureExpression` using a C closure.
 *
 */
@interface OGTKCClosureExpression : OGTKExpression
{

}


/**
 * Constructors
 */
- (instancetype)initWithValueType:(GType)valueType marshal:(GClosureMarshal)marshal nparams:(guint)nparams params:(GtkExpression**)params callbackFunc:(GCallback)callbackFunc userData:(gpointer)userData userDestroy:(GClosureNotify)userDestroy;

/**
 * Methods
 */

- (GtkCClosureExpression*)castedGObject;

@end
