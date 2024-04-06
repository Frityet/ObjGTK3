/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


@class OGGdkSurface;

/**
 * An event related to a broken windowing system grab.
 *
 */
@interface OGGdkGrabBrokenEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkGrabBrokenEvent*)castedGObject;

/**
 * Extracts the grab surface from a grab broken event.
 *
 * @return the grab surface of @event
 */
- (OGGdkSurface*)grabSurface;

/**
 * Checks whether the grab broken event is for an implicit grab.
 *
 * @return %TRUE if the an implicit grab was broken
 */
- (bool)implicit;

@end