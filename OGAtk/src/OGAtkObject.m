/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkObject.h"

#import "OGAtkStateSet.h"
#import "OGAtkRelationSet.h"

#include <atk/atk.h>
#include <atk/atkobject.h>

@implementation OGAtkObject

- (AtkObject*)castedGObject
{
	return ATK_OBJECT([self gObject]);
}

- (bool)addRelationshipWithRelationship:(AtkRelationType)relationship target:(OGAtkObject*)target
{
	bool returnValue = atk_object_add_relationship([self castedGObject], relationship, [target castedGObject]);

	return returnValue;
}

- (guint)connectPropertyChangeHandler:(AtkPropertyChangeHandler*)handler
{
	guint returnValue = atk_object_connect_property_change_handler([self castedGObject], handler);

	return returnValue;
}

- (OFString*)accessibleId
{
	const gchar* gobjectValue = atk_object_get_accessible_id([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (AtkAttributeSet*)attributes
{
	AtkAttributeSet* returnValue = atk_object_get_attributes([self castedGObject]);

	return returnValue;
}

- (OFString*)description
{
	const gchar* gobjectValue = atk_object_get_description([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (gint)indexInParent
{
	gint returnValue = atk_object_get_index_in_parent([self castedGObject]);

	return returnValue;
}

- (AtkLayer)layer
{
	AtkLayer returnValue = atk_object_get_layer([self castedGObject]);

	return returnValue;
}

- (gint)mdiZorder
{
	gint returnValue = atk_object_get_mdi_zorder([self castedGObject]);

	return returnValue;
}

- (gint)naccessibleChildren
{
	gint returnValue = atk_object_get_n_accessible_children([self castedGObject]);

	return returnValue;
}

- (OFString*)name
{
	const gchar* gobjectValue = atk_object_get_name([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (OFString*)objectLocale
{
	const gchar* gobjectValue = atk_object_get_object_locale([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (OGAtkObject*)parent
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_object_get_parent([self castedGObject]));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	return returnValue;
}

- (AtkRole)role
{
	AtkRole returnValue = atk_object_get_role([self castedGObject]);

	return returnValue;
}

- (void)initialize:(gpointer)data
{
	atk_object_initialize([self castedGObject], data);
}

- (void)notifyStateChangeWithState:(AtkState)state value:(bool)value
{
	atk_object_notify_state_change([self castedGObject], state, value);
}

- (OGAtkObject*)peekParent
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_object_peek_parent([self castedGObject]));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	return returnValue;
}

- (OGAtkObject*)refAccessibleChild:(gint)i
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_object_ref_accessible_child([self castedGObject], i));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (OGAtkRelationSet*)refRelationSet
{
	AtkRelationSet* gobjectValue = ATK_RELATION_SET(atk_object_ref_relation_set([self castedGObject]));

	OGAtkRelationSet* returnValue = [OGAtkRelationSet withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (OGAtkStateSet*)refStateSet
{
	AtkStateSet* gobjectValue = ATK_STATE_SET(atk_object_ref_state_set([self castedGObject]));

	OGAtkStateSet* returnValue = [OGAtkStateSet withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (void)removePropertyChangeHandler:(guint)handlerId
{
	atk_object_remove_property_change_handler([self castedGObject], handlerId);
}

- (bool)removeRelationshipWithRelationship:(AtkRelationType)relationship target:(OGAtkObject*)target
{
	bool returnValue = atk_object_remove_relationship([self castedGObject], relationship, [target castedGObject]);

	return returnValue;
}

- (void)setAccessibleId:(OFString*)id
{
	atk_object_set_accessible_id([self castedGObject], [id UTF8String]);
}

- (void)setDescription:(OFString*)description
{
	atk_object_set_description([self castedGObject], [description UTF8String]);
}

- (void)setName:(OFString*)name
{
	atk_object_set_name([self castedGObject], [name UTF8String]);
}

- (void)setParent:(OGAtkObject*)parent
{
	atk_object_set_parent([self castedGObject], [parent castedGObject]);
}

- (void)setRole:(AtkRole)role
{
	atk_object_set_role([self castedGObject], role);
}


@end
