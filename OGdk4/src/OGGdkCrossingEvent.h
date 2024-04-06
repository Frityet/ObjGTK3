/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event caused by a pointing device moving between surfaces.
 *
 */
@interface OGGdkCrossingEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkCrossingEvent*)castedGObject;

/**
 * Extracts the notify detail from a crossing event.
 *
 * @return the notify detail of @event
 */
- (GdkNotifyType)detail;

/**
 * Checks if the @event surface is the focus surface.
 *
 * @return %TRUE if the surface is the focus surface
 */
- (bool)focus;

/**
 * Extracts the crossing mode from a crossing event.
 *
 * @return the mode of @event
 */
- (GdkCrossingMode)mode;

@end