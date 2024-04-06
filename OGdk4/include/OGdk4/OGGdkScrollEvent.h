/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>

#import "OGGdkEvent.h"

/**
 * An event related to a scrolling motion.
 *
 */
@interface OGGdkScrollEvent : OGGdkEvent
{

}


/**
 * Methods
 */

- (GdkScrollEvent*)castedGObject;

/**
 * Extracts the scroll deltas of a scroll event.
 *
 * The deltas will be zero unless the scroll direction
 * is %GDK_SCROLL_SMOOTH.
 *
 * For the representation unit of these deltas, see
 * [method@Gdk.ScrollEvent.get_unit].
 *
 * @param deltaX return location for x scroll delta
 * @param deltaY return location for y scroll delta
 */
- (void)deltasWithDeltaX:(double*)deltaX deltaY:(double*)deltaY;

/**
 * Extracts the direction of a scroll event.
 *
 * @return the scroll direction of @event
 */
- (GdkScrollDirection)direction;

/**
 * Extracts the scroll delta unit of a scroll event.
 *
 * The unit will always be %GDK_SCROLL_UNIT_WHEEL if the scroll direction is not
 * %GDK_SCROLL_SMOOTH.
 *
 * @return the scroll unit.
 */
- (GdkScrollUnit)unit;

/**
 * Check whether a scroll event is a stop scroll event.
 *
 * Scroll sequences with smooth scroll information may provide
 * a stop scroll event once the interaction with the device finishes,
 * e.g. by lifting a finger. This stop scroll event is the signal
 * that a widget may trigger kinetic scrolling based on the current
 * velocity.
 *
 * Stop scroll events always have a delta of 0/0.
 *
 * @return %TRUE if the event is a scroll stop event
 */
- (bool)isStop;

@end
