/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkHyperlink.h"

#import "OGAtkObject.h"

@implementation OGAtkHyperlink

- (AtkHyperlink*)castedGObject
{
	return ATK_HYPERLINK([self gObject]);
}

- (gint)endIndex
{
	gint returnValue = atk_hyperlink_get_end_index([self castedGObject]);

	return returnValue;
}

- (gint)nanchors
{
	gint returnValue = atk_hyperlink_get_n_anchors([self castedGObject]);

	return returnValue;
}

- (OGAtkObject*)object:(gint)i
{
	AtkObject* gobjectValue = ATK_OBJECT(atk_hyperlink_get_object([self castedGObject], i));

	OGAtkObject* returnValue = [OGAtkObject withGObject:gobjectValue];
	return returnValue;
}

- (gint)startIndex
{
	gint returnValue = atk_hyperlink_get_start_index([self castedGObject]);

	return returnValue;
}

- (OFString*)uri:(gint)i
{
	gchar* gobjectValue = atk_hyperlink_get_uri([self castedGObject], i);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:true] : nil);
	return returnValue;
}

- (bool)isInline
{
	bool returnValue = atk_hyperlink_is_inline([self castedGObject]);

	return returnValue;
}

- (bool)isSelectedLink
{
	bool returnValue = atk_hyperlink_is_selected_link([self castedGObject]);

	return returnValue;
}

- (bool)isValid
{
	bool returnValue = atk_hyperlink_is_valid([self castedGObject]);

	return returnValue;
}


@end