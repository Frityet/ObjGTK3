/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>


/**
 * A constant value in a `GtkExpression`.
 *
 */
@interface OGTKConstantExpression : GtkExpression
{

}


/**
 * Constructors
 */
- (instancetype)initForValue:(const GValue*)value;

/**
 * Methods
 */

- (GtkConstantExpression*)castedGObject;

/**
 * Gets the value that a constant expression evaluates to.
 *
 * @return the value
 */
- (const GValue*)value;

@end