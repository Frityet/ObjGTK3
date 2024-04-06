/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gdk/gdk.h>


/**
 * An event related to a key-based device.
 *
 */
@interface OGGdkKeyEvent : GdkEvent
{

}


/**
 * Methods
 */

- (GdkKeyEvent*)castedGObject;

/**
 * Extracts the consumed modifiers from a key event.
 *
 * @return the consumed modifiers or @event
 */
- (GdkModifierType)consumedModifiers;

/**
 * Extracts the keycode from a key event.
 *
 * @return the keycode of @event
 */
- (guint)keycode;

/**
 * Extracts the keyval from a key event.
 *
 * @return the keyval of @event
 */
- (guint)keyval;

/**
 * Extracts the layout from a key event.
 *
 * @return the layout of @event
 */
- (guint)layout;

/**
 * Extracts the shift level from a key event.
 *
 * @return the shift level of @event
 */
- (guint)level;

/**
 * Gets a keyval and modifier combination that will match
 * the event.
 * 
 * See [method@Gdk.KeyEvent.matches].
 *
 * @param keyval return location for a keyval
 * @param modifiers return location for modifiers
 * @return %TRUE on success
 */
- (bool)matchWithKeyval:(guint*)keyval modifiers:(GdkModifierType*)modifiers;

/**
 * Extracts whether the key event is for a modifier key.
 *
 * @return %TRUE if the @event is for a modifier key
 */
- (bool)isModifier;

/**
 * Matches a key event against a keyval and modifiers.
 * 
 * This is typically used to trigger keyboard shortcuts such as Ctrl-C.
 * 
 * Partial matches are possible where the combination matches
 * if the currently active group is ignored.
 * 
 * Note that we ignore Caps Lock for matching.
 *
 * @param keyval the keyval to match
 * @param modifiers the modifiers to match
 * @return a `GdkKeyMatch` value describing whether @event matches
 */
- (GdkKeyMatch)matchesWithKeyval:(guint)keyval modifiers:(GdkModifierType)modifiers;

@end