/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkTouchpadEvent.h"

@implementation OGGdkTouchpadEvent

- (GdkTouchpadEvent*)castedGObject
{
	return GDK_TOUCHPAD_EVENT([self gObject]);
}

- (void)deltasWithDx:(double*)dx dy:(double*)dy
{
	gdk_touchpad_event_get_deltas([self castedGObject], dx, dy);
}

- (GdkTouchpadGesturePhase)gesturePhase
{
	GdkTouchpadGesturePhase returnValue = gdk_touchpad_event_get_gesture_phase([self castedGObject]);

	return returnValue;
}

- (guint)nfingers
{
	guint returnValue = gdk_touchpad_event_get_n_fingers([self castedGObject]);

	return returnValue;
}

- (double)pinchAngleDelta
{
	double returnValue = gdk_touchpad_event_get_pinch_angle_delta([self castedGObject]);

	return returnValue;
}

- (double)pinchScale
{
	double returnValue = gdk_touchpad_event_get_pinch_scale([self castedGObject]);

	return returnValue;
}


@end