/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>

#import "OGTKExpression.h"

/**
 * A `GObject` value in a `GtkExpression`.
 *
 */
@interface OGTKObjectExpression : OGTKExpression
{

}


/**
 * Constructors
 */
- (instancetype)init:(GObject*)object;

/**
 * Methods
 */

- (GtkObjectExpression*)castedGObject;

/**
 * Gets the object that the expression evaluates to.
 *
 * @return the object, or `NULL`
 */
- (GObject*)object;

@end
