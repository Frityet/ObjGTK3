/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>

#import <OGObject/OGObject.h>

@class OGTKPrinter;
@class OGTKPrintSettings;
@class OGTKPageSetup;

/**
 * A `GtkPrintJob` object represents a job that is sent to a printer.
 * 
 * You only need to deal directly with print jobs if you use the
 * non-portable [class@Gtk.PrintUnixDialog] API.
 * 
 * Use [method@Gtk.PrintJob.get_surface] to obtain the cairo surface
 * onto which the pages must be drawn. Use [method@Gtk.PrintJob.send]
 * to send the finished job to the printer. If you don’t use cairo
 * `GtkPrintJob` also supports printing of manually generated PostScript,
 * via [method@Gtk.PrintJob.set_source_file].
 *
 */
@interface OGTKPrintJob : OGObject
{

}


/**
 * Constructors
 */
- (instancetype)initWithTitle:(OFString*)title printer:(OGTKPrinter*)printer settings:(OGTKPrintSettings*)settings pageSetup:(OGTKPageSetup*)pageSetup;

/**
 * Methods
 */

- (GtkPrintJob*)castedGObject;

/**
 * Gets whether this job is printed collated.
 *
 * @return whether the job is printed collated
 */
- (bool)collate;

/**
 * Gets the n-up setting for this job.
 *
 * @return the n-up setting
 */
- (guint)nup;

/**
 * Gets the n-up layout setting for this job.
 *
 * @return the n-up layout
 */
- (GtkNumberUpLayout)nupLayout;

/**
 * Gets the number of copies of this job.
 *
 * @return the number of copies
 */
- (int)numCopies;

/**
 * Gets the page ranges for this job.
 *
 * @param nranges return location for the number of ranges
 * @return a pointer to an
 *   array of `GtkPageRange` structs
 */
- (GtkPageRange*)pageRanges:(int*)nranges;

/**
 * Gets the `GtkPageSet` setting for this job.
 *
 * @return the `GtkPageSet` setting
 */
- (GtkPageSet)pageSet;

/**
 * Gets the `GtkPrintPages` setting for this job.
 *
 * @return the `GtkPrintPages` setting
 */
- (GtkPrintPages)pages;

/**
 * Gets the `GtkPrinter` of the print job.
 *
 * @return the printer of @job
 */
- (OGTKPrinter*)printer;

/**
 * Gets whether this job is printed reversed.
 *
 * @return whether the job is printed reversed.
 */
- (bool)reverse;

/**
 * Gets whether the job is printed rotated.
 *
 * @return whether the job is printed rotated
 */
- (bool)rotate;

/**
 * Gets the scale for this job.
 *
 * @return the scale
 */
- (double)scale;

/**
 * Gets the `GtkPrintSettings` of the print job.
 *
 * @return the settings of @job
 */
- (OGTKPrintSettings*)settings;

/**
 * Gets the status of the print job.
 *
 * @return the status of @job
 */
- (GtkPrintStatus)status;

/**
 * Gets a cairo surface onto which the pages of
 * the print job should be rendered.
 *
 * @return the cairo surface of @job
 */
- (cairo_surface_t*)surface;

/**
 * Gets the job title.
 *
 * @return the title of @job
 */
- (OFString*)title;

/**
 * Returns whether jobs will be tracked after printing.
 * 
 * For details, see [method@Gtk.PrintJob.set_track_print_status].
 *
 * @return %TRUE if print job status will be reported after printing
 */
- (bool)trackPrintStatus;

/**
 * Sends the print job off to the printer.
 *
 * @param callback function to call when the job completes or an error occurs
 * @param userData user data that gets passed to @callback
 * @param dnotify destroy notify for @user_data
 */
- (void)sendWithCallback:(GtkPrintJobCompleteFunc)callback userData:(gpointer)userData dnotify:(GDestroyNotify)dnotify;

/**
 * Sets whether this job is printed collated.
 *
 * @param collate whether the job is printed collated
 */
- (void)setCollate:(bool)collate;

/**
 * Sets the n-up setting for this job.
 *
 * @param nup the n-up value
 */
- (void)setNup:(guint)nup;

/**
 * Sets the n-up layout setting for this job.
 *
 * @param layout the n-up layout setting
 */
- (void)setNupLayout:(GtkNumberUpLayout)layout;

/**
 * Sets the number of copies for this job.
 *
 * @param numCopies the number of copies
 */
- (void)setNumCopies:(int)numCopies;

/**
 * Sets the page ranges for this job.
 *
 * @param ranges pointer to an array of
 *    `GtkPageRange` structs
 * @param nranges the length of the @ranges array
 */
- (void)setPageRangesWithRanges:(GtkPageRange*)ranges nranges:(int)nranges;

/**
 * Sets the `GtkPageSet` setting for this job.
 *
 * @param pageSet a `GtkPageSet` setting
 */
- (void)setPageSet:(GtkPageSet)pageSet;

/**
 * Sets the `GtkPrintPages` setting for this job.
 *
 * @param pages the `GtkPrintPages` setting
 */
- (void)setPages:(GtkPrintPages)pages;

/**
 * Sets whether this job is printed reversed.
 *
 * @param reverse whether the job is printed reversed
 */
- (void)setReverse:(bool)reverse;

/**
 * Sets whether this job is printed rotated.
 *
 * @param rotate whether to print rotated
 */
- (void)setRotate:(bool)rotate;

/**
 * Sets the scale for this job.
 * 
 * 1.0 means unscaled.
 *
 * @param scale the scale
 */
- (void)setScale:(double)scale;

/**
 * Make the `GtkPrintJob` send an existing document to the
 * printing system.
 * 
 * The file can be in any format understood by the platforms
 * printing system (typically PostScript, but on many platforms
 * PDF may work too). See [method@Gtk.Printer.accepts_pdf] and
 * [method@Gtk.Printer.accepts_ps].
 * 
 * This is similar to [method@Gtk.PrintJob.set_source_file],
 * but takes expects an open file descriptor for the file,
 * instead of a filename.
 *
 * @param fd a file descriptor
 * @return %FALSE if an error occurred
 */
- (bool)setSourceFd:(int)fd;

/**
 * Make the `GtkPrintJob` send an existing document to the
 * printing system.
 * 
 * The file can be in any format understood by the platforms
 * printing system (typically PostScript, but on many platforms
 * PDF may work too). See [method@Gtk.Printer.accepts_pdf] and
 * [method@Gtk.Printer.accepts_ps].
 *
 * @param filename the file to be printed
 * @return %FALSE if an error occurred
 */
- (bool)setSourceFile:(OFString*)filename;

/**
 * If track_status is %TRUE, the print job will try to continue report
 * on the status of the print job in the printer queues and printer.
 * 
 * This can allow your application to show things like “out of paper”
 * issues, and when the print job actually reaches the printer.
 * 
 * This function is often implemented using some form of polling,
 * so it should not be enabled unless needed.
 *
 * @param trackStatus %TRUE to track status after printing
 */
- (void)setTrackPrintStatus:(bool)trackStatus;

@end