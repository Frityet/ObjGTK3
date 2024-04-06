/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event related to a gesture on a touchpad device.
 * 
 * Unlike touchscreens, where the windowing system sends basic
 * sequences of begin, update, end events, and leaves gesture
 * recognition to the clients, touchpad gestures are typically
 * processed by the system, resulting in these events.
 *
 */
@interface OGGdkTouchpadEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkTouchpadEvent*)castedGObject;

/**
 * Extracts delta information from a touchpad event.
 *
 * @param dx return location for x
 * @param dy return location for y
 */
- (void)deltasWithDx:(double*)dx dy:(double*)dy;

/**
 * Extracts the touchpad gesture phase from a touchpad event.
 *
 * @return the gesture phase of @event
 */
- (GdkTouchpadGesturePhase)gesturePhase;

/**
 * Extracts the number of fingers from a touchpad event.
 *
 * @return the number of fingers for @event
 */
- (guint)nfingers;

/**
 * Extracts the angle delta from a touchpad pinch event.
 *
 * @return the angle delta of @event
 */
- (double)pinchAngleDelta;

/**
 * Extracts the scale from a touchpad pinch event.
 *
 * @return the scale of @event
 */
- (double)pinchScale;

@end