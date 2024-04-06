/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKPrintUnixDialog.h"

#import "OGTKPageSetup.h"
#import "OGTKPrinter.h"
#import "OGTKWidget.h"
#import "OGTKPrintSettings.h"
#import "OGTKWindow.h"

@implementation OGTKPrintUnixDialog

- (instancetype)initWithTitle:(OFString*)title parent:(OGTKWindow*)parent
{
	GtkPrintUnixDialog* gobjectValue = GTK_PRINT_UNIX_DIALOG(gtk_print_unix_dialog_new([title UTF8String], [parent castedGObject]));

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

- (GtkPrintUnixDialog*)castedGObject
{
	return GTK_PRINT_UNIX_DIALOG([self gObject]);
}

- (void)addCustomTabWithChild:(OGTKWidget*)child tabLabel:(OGTKWidget*)tabLabel
{
	gtk_print_unix_dialog_add_custom_tab([self castedGObject], [child castedGObject], [tabLabel castedGObject]);
}

- (int)currentPage
{
	int returnValue = gtk_print_unix_dialog_get_current_page([self castedGObject]);

	return returnValue;
}

- (bool)embedPageSetup
{
	bool returnValue = gtk_print_unix_dialog_get_embed_page_setup([self castedGObject]);

	return returnValue;
}

- (bool)hasSelection
{
	bool returnValue = gtk_print_unix_dialog_get_has_selection([self castedGObject]);

	return returnValue;
}

- (GtkPrintCapabilities)manualCapabilities
{
	GtkPrintCapabilities returnValue = gtk_print_unix_dialog_get_manual_capabilities([self castedGObject]);

	return returnValue;
}

- (OGTKPageSetup*)pageSetup
{
	GtkPageSetup* gobjectValue = GTK_PAGE_SETUP(gtk_print_unix_dialog_get_page_setup([self castedGObject]));

	OGTKPageSetup* returnValue = [OGTKPageSetup withGObject:gobjectValue];
	return returnValue;
}

- (bool)pageSetupSet
{
	bool returnValue = gtk_print_unix_dialog_get_page_setup_set([self castedGObject]);

	return returnValue;
}

- (OGTKPrinter*)selectedPrinter
{
	GtkPrinter* gobjectValue = GTK_PRINTER(gtk_print_unix_dialog_get_selected_printer([self castedGObject]));

	OGTKPrinter* returnValue = [OGTKPrinter withGObject:gobjectValue];
	return returnValue;
}

- (OGTKPrintSettings*)settings
{
	GtkPrintSettings* gobjectValue = GTK_PRINT_SETTINGS(gtk_print_unix_dialog_get_settings([self castedGObject]));

	OGTKPrintSettings* returnValue = [OGTKPrintSettings withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (bool)supportSelection
{
	bool returnValue = gtk_print_unix_dialog_get_support_selection([self castedGObject]);

	return returnValue;
}

- (void)setCurrentPage:(int)currentPage
{
	gtk_print_unix_dialog_set_current_page([self castedGObject], currentPage);
}

- (void)setEmbedPageSetup:(bool)embed
{
	gtk_print_unix_dialog_set_embed_page_setup([self castedGObject], embed);
}

- (void)setHasSelection:(bool)hasSelection
{
	gtk_print_unix_dialog_set_has_selection([self castedGObject], hasSelection);
}

- (void)setManualCapabilities:(GtkPrintCapabilities)capabilities
{
	gtk_print_unix_dialog_set_manual_capabilities([self castedGObject], capabilities);
}

- (void)setPageSetup:(OGTKPageSetup*)pageSetup
{
	gtk_print_unix_dialog_set_page_setup([self castedGObject], [pageSetup castedGObject]);
}

- (void)setSettings:(OGTKPrintSettings*)settings
{
	gtk_print_unix_dialog_set_settings([self castedGObject], [settings castedGObject]);
}

- (void)setSupportSelection:(bool)supportSelection
{
	gtk_print_unix_dialog_set_support_selection([self castedGObject], supportSelection);
}


@end