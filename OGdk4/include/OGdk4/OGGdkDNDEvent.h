/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>

#import "OGGdkEvent.h"

@class OGGdkDrop;

/**
 * An event related to drag and drop operations.
 *
 */
@interface OGGdkDNDEvent : OGGdkEvent
{

}


/**
 * Methods
 */

- (GdkDNDEvent*)castedGObject;

/**
 * Gets the `GdkDrop` object from a DND event.
 *
 * @return the drop
 */
- (OGGdkDrop*)drop;

@end
