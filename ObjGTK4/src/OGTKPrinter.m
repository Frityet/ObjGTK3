/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKPrinter.h"

#import "OGTKPageSetup.h"

@implementation OGTKPrinter

- (instancetype)initWithName:(OFString*)name backend:(GtkPrintBackend*)backend virtual:(bool)virtual
{
	GtkPrinter* gobjectValue = GTK_PRINTER(gtk_printer_new([name UTF8String], backend, virtual));

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

- (GtkPrinter*)castedGObject
{
	return GTK_PRINTER([self gObject]);
}

- (bool)acceptsPdf
{
	bool returnValue = gtk_printer_accepts_pdf([self castedGObject]);

	return returnValue;
}

- (bool)acceptsPs
{
	bool returnValue = gtk_printer_accepts_ps([self castedGObject]);

	return returnValue;
}

- (int)compare:(OGTKPrinter*)b
{
	int returnValue = gtk_printer_compare([self castedGObject], [b castedGObject]);

	return returnValue;
}

- (GtkPrintBackend*)backend
{
	GtkPrintBackend* returnValue = gtk_printer_get_backend([self castedGObject]);

	return returnValue;
}

- (GtkPrintCapabilities)capabilities
{
	GtkPrintCapabilities returnValue = gtk_printer_get_capabilities([self castedGObject]);

	return returnValue;
}

- (OGTKPageSetup*)defaultPageSize
{
	GtkPageSetup* gobjectValue = GTK_PAGE_SETUP(gtk_printer_get_default_page_size([self castedGObject]));

	OGTKPageSetup* returnValue = [OGTKPageSetup withGObject:gobjectValue];
	g_object_unref(gobjectValue);

	return returnValue;
}

- (OFString*)description
{
	const char* gobjectValue = gtk_printer_get_description([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (bool)hardMarginsWithTop:(double*)top bottom:(double*)bottom left:(double*)left right:(double*)right
{
	bool returnValue = gtk_printer_get_hard_margins([self castedGObject], top, bottom, left, right);

	return returnValue;
}

- (bool)hardMarginsForPaperSizeWithPaperSize:(GtkPaperSize*)paperSize top:(double*)top bottom:(double*)bottom left:(double*)left right:(double*)right
{
	bool returnValue = gtk_printer_get_hard_margins_for_paper_size([self castedGObject], paperSize, top, bottom, left, right);

	return returnValue;
}

- (OFString*)iconName
{
	const char* gobjectValue = gtk_printer_get_icon_name([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (int)jobCount
{
	int returnValue = gtk_printer_get_job_count([self castedGObject]);

	return returnValue;
}

- (OFString*)location
{
	const char* gobjectValue = gtk_printer_get_location([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (OFString*)name
{
	const char* gobjectValue = gtk_printer_get_name([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (OFString*)stateMessage
{
	const char* gobjectValue = gtk_printer_get_state_message([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (bool)hasDetails
{
	bool returnValue = gtk_printer_has_details([self castedGObject]);

	return returnValue;
}

- (bool)isAcceptingJobs
{
	bool returnValue = gtk_printer_is_accepting_jobs([self castedGObject]);

	return returnValue;
}

- (bool)isActive
{
	bool returnValue = gtk_printer_is_active([self castedGObject]);

	return returnValue;
}

- (bool)isDefault
{
	bool returnValue = gtk_printer_is_default([self castedGObject]);

	return returnValue;
}

- (bool)isPaused
{
	bool returnValue = gtk_printer_is_paused([self castedGObject]);

	return returnValue;
}

- (bool)isVirtual
{
	bool returnValue = gtk_printer_is_virtual([self castedGObject]);

	return returnValue;
}

- (GList*)listPapers
{
	GList* returnValue = gtk_printer_list_papers([self castedGObject]);

	return returnValue;
}

- (void)requestDetails
{
	gtk_printer_request_details([self castedGObject]);
}


@end