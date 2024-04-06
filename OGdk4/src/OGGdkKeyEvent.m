/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGGdkKeyEvent.h"

@implementation OGGdkKeyEvent

- (GdkKeyEvent*)castedGObject
{
	return GDK_KEY_EVENT([self gObject]);
}

- (GdkModifierType)consumedModifiers
{
	GdkModifierType returnValue = gdk_key_event_get_consumed_modifiers([self castedGObject]);

	return returnValue;
}

- (guint)keycode
{
	guint returnValue = gdk_key_event_get_keycode([self castedGObject]);

	return returnValue;
}

- (guint)keyval
{
	guint returnValue = gdk_key_event_get_keyval([self castedGObject]);

	return returnValue;
}

- (guint)layout
{
	guint returnValue = gdk_key_event_get_layout([self castedGObject]);

	return returnValue;
}

- (guint)level
{
	guint returnValue = gdk_key_event_get_level([self castedGObject]);

	return returnValue;
}

- (bool)matchWithKeyval:(guint*)keyval modifiers:(GdkModifierType*)modifiers
{
	bool returnValue = gdk_key_event_get_match([self castedGObject], keyval, modifiers);

	return returnValue;
}

- (bool)isModifier
{
	bool returnValue = gdk_key_event_is_modifier([self castedGObject]);

	return returnValue;
}

- (GdkKeyMatch)matchesWithKeyval:(guint)keyval modifiers:(GdkModifierType)modifiers
{
	GdkKeyMatch returnValue = gdk_key_event_matches([self castedGObject], keyval, modifiers);

	return returnValue;
}


@end