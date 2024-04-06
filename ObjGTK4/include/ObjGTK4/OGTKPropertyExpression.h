/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>


/**
 * A `GObject` property value in a `GtkExpression`.
 *
 */
@interface OGTKPropertyExpression : GtkExpression
{

}


/**
 * Constructors
 */
- (instancetype)initWithThisType:(GType)thisType expression:(GtkExpression*)expression propertyName:(OFString*)propertyName;
- (instancetype)initForPspecWithExpression:(GtkExpression*)expression pspec:(GParamSpec*)pspec;

/**
 * Methods
 */

- (GtkPropertyExpression*)castedGObject;

/**
 * Gets the expression specifying the object of
 * a property expression.
 *
 * @return the object expression
 */
- (GtkExpression*)expression;

/**
 * Gets the `GParamSpec` specifying the property of
 * a property expression.
 *
 * @return the `GParamSpec` for the property
 */
- (GParamSpec*)pspec;

@end