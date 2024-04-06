/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKPageSetupUnixDialog.h"

#if defined(OGTK_UNIX_DIALOG)

#import "OGTKPrintSettings.h"
#import "OGTKWidget.h"
#import "OGTKPageSetup.h"
#import "OGTKWindow.h"

@implementation OGTKPageSetupUnixDialog

- (instancetype)initWithTitle:(OFString*)title parent:(OGTKWindow*)parent
{
	GtkPageSetupUnixDialog* gobjectValue = GTK_PAGE_SETUP_UNIX_DIALOG(gtk_page_setup_unix_dialog_new([title UTF8String], [parent castedGObject]));

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

- (GtkPageSetupUnixDialog*)castedGObject
{
	return GTK_PAGE_SETUP_UNIX_DIALOG([self gObject]);
}

- (OGTKPageSetup*)pageSetup
{
	GtkPageSetup* gobjectValue = GTK_PAGE_SETUP(gtk_page_setup_unix_dialog_get_page_setup([self castedGObject]));

	OGTKPageSetup* returnValue = [OGTKPageSetup withGObject:gobjectValue];
	return returnValue;
}

- (OGTKPrintSettings*)printSettings
{
	GtkPrintSettings* gobjectValue = GTK_PRINT_SETTINGS(gtk_page_setup_unix_dialog_get_print_settings([self castedGObject]));

	OGTKPrintSettings* returnValue = [OGTKPrintSettings withGObject:gobjectValue];
	return returnValue;
}

- (void)setPageSetup:(OGTKPageSetup*)pageSetup
{
	gtk_page_setup_unix_dialog_set_page_setup([self castedGObject], [pageSetup castedGObject]);
}

- (void)setPrintSettings:(OGTKPrintSettings*)printSettings
{
	gtk_page_setup_unix_dialog_set_print_settings([self castedGObject], [printSettings castedGObject]);
}


@end

#endif
