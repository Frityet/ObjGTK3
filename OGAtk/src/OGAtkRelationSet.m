/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkRelationSet.h"

#import "OGAtkRelation.h"
#import "OGAtkObject.h"

@implementation OGAtkRelationSet

- (instancetype)init
{
	AtkRelationSet* gobjectValue = ATK_RELATION_SET(atk_relation_set_new());

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

- (AtkRelationSet*)castedGObject
{
	return ATK_RELATION_SET([self gObject]);
}

- (void)add:(OGAtkRelation*)relation
{
	atk_relation_set_add([self castedGObject], [relation castedGObject]);
}

- (void)addRelationByTypeWithRelationship:(AtkRelationType)relationship target:(OGAtkObject*)target
{
	atk_relation_set_add_relation_by_type([self castedGObject], relationship, [target castedGObject]);
}

- (bool)contains:(AtkRelationType)relationship
{
	bool returnValue = atk_relation_set_contains([self castedGObject], relationship);

	return returnValue;
}

- (bool)containsTargetWithRelationship:(AtkRelationType)relationship target:(OGAtkObject*)target
{
	bool returnValue = atk_relation_set_contains_target([self castedGObject], relationship, [target castedGObject]);

	return returnValue;
}

- (gint)nrelations
{
	gint returnValue = atk_relation_set_get_n_relations([self castedGObject]);

	return returnValue;
}

- (OGAtkRelation*)relation:(gint)i
{
	AtkRelation* gobjectValue = ATK_RELATION(atk_relation_set_get_relation([self castedGObject], i));

	OGAtkRelation* returnValue = [OGAtkRelation withGObject:gobjectValue];
	return returnValue;
}

- (OGAtkRelation*)relationByType:(AtkRelationType)relationship
{
	AtkRelation* gobjectValue = ATK_RELATION(atk_relation_set_get_relation_by_type([self castedGObject], relationship));

	OGAtkRelation* returnValue = [OGAtkRelation withGObject:gobjectValue];
	return returnValue;
}

- (void)remove:(OGAtkRelation*)relation
{
	atk_relation_set_remove([self castedGObject], [relation castedGObject]);
}


@end