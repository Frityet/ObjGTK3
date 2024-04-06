/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event related to a keyboard focus change.
 *
 */
@interface OGGdkFocusEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkFocusEvent*)castedGObject;

/**
 * Extracts whether this event is about focus entering or
 * leaving the surface.
 *
 * @return %TRUE of the focus is entering
 */
- (bool)in;

@end