/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkRelation.h"

#import "OGAtkObject.h"

@implementation OGAtkRelation

- (instancetype)initWithTargets:(AtkObject**)targets ntargets:(gint)ntargets relationship:(AtkRelationType)relationship
{
	AtkRelation* gobjectValue = ATK_RELATION(atk_relation_new(targets, ntargets, relationship));

	@try {
		self = [super initWithGObject:gobjectValue];
	} @catch (id e) {
		g_object_unref(gobjectValue);
		[self release];
		@throw e;
	}

	g_object_unref(gobjectValue);
	return self;
}

- (AtkRelation*)castedGObject
{
	return ATK_RELATION([self gObject]);
}

- (void)addTarget:(OGAtkObject*)target
{
	atk_relation_add_target([self castedGObject], [target castedGObject]);
}

- (AtkRelationType)relationType
{
	AtkRelationType returnValue = atk_relation_get_relation_type([self castedGObject]);

	return returnValue;
}

- (GPtrArray*)target
{
	GPtrArray* returnValue = atk_relation_get_target([self castedGObject]);

	return returnValue;
}

- (bool)removeTarget:(OGAtkObject*)target
{
	bool returnValue = atk_relation_remove_target([self castedGObject], [target castedGObject]);

	return returnValue;
}


@end