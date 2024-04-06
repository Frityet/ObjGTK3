/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKPrintJob.h"

#import "OGTKPrinter.h"
#import "OGTKPrintSettings.h"
#import "OGTKPageSetup.h"

@implementation OGTKPrintJob

- (instancetype)initWithTitle:(OFString*)title printer:(OGTKPrinter*)printer settings:(OGTKPrintSettings*)settings pageSetup:(OGTKPageSetup*)pageSetup
{
	GtkPrintJob* gobjectValue = GTK_PRINT_JOB(gtk_print_job_new([title UTF8String], [printer castedGObject], [settings castedGObject], [pageSetup castedGObject]));

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

- (GtkPrintJob*)castedGObject
{
	return GTK_PRINT_JOB([self gObject]);
}

- (bool)collate
{
	bool returnValue = gtk_print_job_get_collate([self castedGObject]);

	return returnValue;
}

- (guint)nup
{
	guint returnValue = gtk_print_job_get_n_up([self castedGObject]);

	return returnValue;
}

- (GtkNumberUpLayout)nupLayout
{
	GtkNumberUpLayout returnValue = gtk_print_job_get_n_up_layout([self castedGObject]);

	return returnValue;
}

- (int)numCopies
{
	int returnValue = gtk_print_job_get_num_copies([self castedGObject]);

	return returnValue;
}

- (GtkPageRange*)pageRanges:(int*)nranges
{
	GtkPageRange* returnValue = gtk_print_job_get_page_ranges([self castedGObject], nranges);

	return returnValue;
}

- (GtkPageSet)pageSet
{
	GtkPageSet returnValue = gtk_print_job_get_page_set([self castedGObject]);

	return returnValue;
}

- (GtkPrintPages)pages
{
	GtkPrintPages returnValue = gtk_print_job_get_pages([self castedGObject]);

	return returnValue;
}

- (OGTKPrinter*)printer
{
	GtkPrinter* gobjectValue = GTK_PRINTER(gtk_print_job_get_printer([self castedGObject]));

	OGTKPrinter* returnValue = [OGTKPrinter withGObject:gobjectValue];
	return returnValue;
}

- (bool)reverse
{
	bool returnValue = gtk_print_job_get_reverse([self castedGObject]);

	return returnValue;
}

- (bool)rotate
{
	bool returnValue = gtk_print_job_get_rotate([self castedGObject]);

	return returnValue;
}

- (double)scale
{
	double returnValue = gtk_print_job_get_scale([self castedGObject]);

	return returnValue;
}

- (OGTKPrintSettings*)settings
{
	GtkPrintSettings* gobjectValue = GTK_PRINT_SETTINGS(gtk_print_job_get_settings([self castedGObject]));

	OGTKPrintSettings* returnValue = [OGTKPrintSettings withGObject:gobjectValue];
	return returnValue;
}

- (GtkPrintStatus)status
{
	GtkPrintStatus returnValue = gtk_print_job_get_status([self castedGObject]);

	return returnValue;
}

- (cairo_surface_t*)surface
{
	GError* err = NULL;

	cairo_surface_t* returnValue = gtk_print_job_get_surface([self castedGObject], &err);

	if(err != NULL) {
		OGErrorException* exception = [OGErrorException exceptionWithGError:err];
		g_error_free(err);
		@throw exception;
	}

	return returnValue;
}

- (OFString*)title
{
	const char* gobjectValue = gtk_print_job_get_title([self castedGObject]);

	OFString* returnValue = ((gobjectValue != NULL) ? [OFString stringWithUTF8StringNoCopy:(char * _Nonnull)gobjectValue freeWhenDone:false] : nil);
	return returnValue;
}

- (bool)trackPrintStatus
{
	bool returnValue = gtk_print_job_get_track_print_status([self castedGObject]);

	return returnValue;
}

- (void)sendWithCallback:(GtkPrintJobCompleteFunc)callback userData:(gpointer)userData dnotify:(GDestroyNotify)dnotify
{
	gtk_print_job_send([self castedGObject], callback, userData, dnotify);
}

- (void)setCollate:(bool)collate
{
	gtk_print_job_set_collate([self castedGObject], collate);
}

- (void)setNup:(guint)nup
{
	gtk_print_job_set_n_up([self castedGObject], nup);
}

- (void)setNupLayout:(GtkNumberUpLayout)layout
{
	gtk_print_job_set_n_up_layout([self castedGObject], layout);
}

- (void)setNumCopies:(int)numCopies
{
	gtk_print_job_set_num_copies([self castedGObject], numCopies);
}

- (void)setPageRangesWithRanges:(GtkPageRange*)ranges nranges:(int)nranges
{
	gtk_print_job_set_page_ranges([self castedGObject], ranges, nranges);
}

- (void)setPageSet:(GtkPageSet)pageSet
{
	gtk_print_job_set_page_set([self castedGObject], pageSet);
}

- (void)setPages:(GtkPrintPages)pages
{
	gtk_print_job_set_pages([self castedGObject], pages);
}

- (void)setReverse:(bool)reverse
{
	gtk_print_job_set_reverse([self castedGObject], reverse);
}

- (void)setRotate:(bool)rotate
{
	gtk_print_job_set_rotate([self castedGObject], rotate);
}

- (void)setScale:(double)scale
{
	gtk_print_job_set_scale([self castedGObject], scale);
}

- (bool)setSourceFd:(int)fd
{
	GError* err = NULL;

	bool returnValue = gtk_print_job_set_source_fd([self castedGObject], fd, &err);

	if(err != NULL) {
		OGErrorException* exception = [OGErrorException exceptionWithGError:err];
		g_error_free(err);
		@throw exception;
	}

	return returnValue;
}

- (bool)setSourceFile:(OFString*)filename
{
	GError* err = NULL;

	bool returnValue = gtk_print_job_set_source_file([self castedGObject], [filename UTF8String], &err);

	if(err != NULL) {
		OGErrorException* exception = [OGErrorException exceptionWithGError:err];
		g_error_free(err);
		@throw exception;
	}

	return returnValue;
}

- (void)setTrackPrintStatus:(bool)trackStatus
{
	gtk_print_job_set_track_print_status([self castedGObject], trackStatus);
}


@end