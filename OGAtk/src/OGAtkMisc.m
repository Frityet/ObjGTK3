/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkMisc.h"

@implementation OGAtkMisc

+ (const AtkMisc*)instance
{
	const AtkMisc* returnValue = atk_misc_get_instance();

	return returnValue;
}

- (AtkMisc*)castedGObject
{
	return ATK_MISC([self gObject]);
}

- (void)threadsEnter
{
	atk_misc_threads_enter([self castedGObject]);
}

- (void)threadsLeave
{
	atk_misc_threads_leave([self castedGObject]);
}


@end