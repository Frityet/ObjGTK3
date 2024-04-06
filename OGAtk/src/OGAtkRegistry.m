/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkRegistry.h"

#import "OGAtkObjectFactory.h"

@implementation OGAtkRegistry

- (AtkRegistry*)castedGObject
{
	return ATK_REGISTRY([self gObject]);
}

- (OGAtkObjectFactory*)factory:(GType)type
{
	AtkObjectFactory* gobjectValue = ATK_OBJECT_FACTORY(atk_registry_get_factory([self castedGObject], type));

	OGAtkObjectFactory* returnValue = [OGAtkObjectFactory withGObject:gobjectValue];
	return returnValue;
}

- (GType)factoryType:(GType)type
{
	GType returnValue = atk_registry_get_factory_type([self castedGObject], type);

	return returnValue;
}

- (void)setFactoryTypeWithType:(GType)type factoryType:(GType)factoryType
{
	atk_registry_set_factory_type([self castedGObject], type, factoryType);
}


@end