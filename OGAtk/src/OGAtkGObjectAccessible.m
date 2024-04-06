/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkGObjectAccessible.h"

@implementation OGAtkGObjectAccessible

+ (OGAtkObject*)forObject:(GObject*)obj
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_gobject_accessible_for_object(obj));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	return returnValue;
}

- (AtkGObjectAccessible*)castedGObject
{
	return ATK_GOBJECT_ACCESSIBLE([self gObject]);
}

- (GObject*)object
{
	GObject* returnValue = atk_gobject_accessible_get_object([self castedGObject]);

	return returnValue;
}


@end