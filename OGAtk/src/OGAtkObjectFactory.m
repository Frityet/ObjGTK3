/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkObjectFactory.h"

#import "OGAtkObject.h"

@implementation OGAtkObjectFactory

- (AtkObjectFactory*)castedGObject
{
	return ATK_OBJECT_FACTORY([self gObject]);
}

- (OGAtkObject*)createAccessible:(GObject*)obj
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_object_factory_create_accessible([self castedGObject], obj));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (GType)accessibleType
{
	GType returnValue = atk_object_factory_get_accessible_type([self castedGObject]);

	return returnValue;
}

- (void)invalidate
{
	atk_object_factory_invalidate([self castedGObject]);
}


@end