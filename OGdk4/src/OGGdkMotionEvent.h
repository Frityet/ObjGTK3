/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event related to a pointer or touch device motion.
 *
 */
@interface OGGdkMotionEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkMotionEvent*)castedGObject;

@end