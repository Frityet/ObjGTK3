/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkStateSet.h"

@implementation OGAtkStateSet

- (instancetype)init
{
	AtkStateSet* gobjectValue = ATK_STATE_SET(atk_state_set_new());

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

- (AtkStateSet*)castedGObject
{
	return ATK_STATE_SET([self gObject]);
}

- (bool)addState:(AtkStateType)type
{
	bool returnValue = atk_state_set_add_state([self castedGObject], type);

	return returnValue;
}

- (void)addStatesWithTypes:(AtkStateType*)types ntypes:(gint)ntypes
{
	atk_state_set_add_states([self castedGObject], types, ntypes);
}

- (OGAtkStateSet*)andSets:(OGAtkStateSet*)compareSet
{
	AtkStateSet* gobjectValue = ATK_STATE_SET(atk_state_set_and_sets([self castedGObject], [compareSet castedGObject]));

	OGAtkStateSet* returnValue = [OGAtkStateSet withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (void)clearStates
{
	atk_state_set_clear_states([self castedGObject]);
}

- (bool)containsState:(AtkStateType)type
{
	bool returnValue = atk_state_set_contains_state([self castedGObject], type);

	return returnValue;
}

- (bool)containsStatesWithTypes:(AtkStateType*)types ntypes:(gint)ntypes
{
	bool returnValue = atk_state_set_contains_states([self castedGObject], types, ntypes);

	return returnValue;
}

- (bool)isEmpty
{
	bool returnValue = atk_state_set_is_empty([self castedGObject]);

	return returnValue;
}

- (OGAtkStateSet*)orSets:(OGAtkStateSet*)compareSet
{
	AtkStateSet* gobjectValue = ATK_STATE_SET(atk_state_set_or_sets([self castedGObject], [compareSet castedGObject]));

	OGAtkStateSet* returnValue = [OGAtkStateSet withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (bool)removeState:(AtkStateType)type
{
	bool returnValue = atk_state_set_remove_state([self castedGObject], type);

	return returnValue;
}

- (OGAtkStateSet*)xorSets:(OGAtkStateSet*)compareSet
{
	AtkStateSet* gobjectValue = ATK_STATE_SET(atk_state_set_xor_sets([self castedGObject], [compareSet castedGObject]));

	OGAtkStateSet* returnValue = [OGAtkStateSet withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}


@end