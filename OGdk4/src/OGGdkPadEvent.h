/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event related to a pad-based device.
 *
 */
@interface OGGdkPadEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkPadEvent*)castedGObject;

/**
 * Extracts the information from a pad strip or ring event.
 *
 * @param index Return location for the axis index
 * @param value Return location for the axis value
 */
- (void)axisValueWithIndex:(guint*)index value:(double*)value;

/**
 * Extracts information about the pressed button from
 * a pad event.
 *
 * @return the button of @event
 */
- (guint)button;

/**
 * Extracts group and mode information from a pad event.
 *
 * @param group return location for the group
 * @param mode return location for the mode
 */
- (void)groupModeWithGroup:(guint*)group mode:(guint*)mode;

@end