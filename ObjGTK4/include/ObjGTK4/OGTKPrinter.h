/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#include <gtk/gtk.h>

#import <OGObject/OGObject.h>

@class OGTKPageSetup;

/**
 * A `GtkPrinter` object represents a printer.
 * 
 * You only need to deal directly with printers if you use the
 * non-portable [class@Gtk.PrintUnixDialog] API.
 * 
 * A `GtkPrinter` allows to get status information about the printer,
 * such as its description, its location, the number of queued jobs,
 * etc. Most importantly, a `GtkPrinter` object can be used to create
 * a [class@Gtk.PrintJob] object, which lets you print to the printer.
 *
 */
@interface OGTKPrinter : OGObject
{

}


/**
 * Constructors
 */
- (instancetype)initWithName:(OFString*)name backend:(GtkPrintBackend*)backend virtual:(bool)virtual;

/**
 * Methods
 */

- (GtkPrinter*)castedGObject;

/**
 * Returns whether the printer accepts input in
 * PDF format.
 *
 * @return %TRUE if @printer accepts PDF
 */
- (bool)acceptsPdf;

/**
 * Returns whether the printer accepts input in
 * PostScript format.
 *
 * @return %TRUE if @printer accepts PostScript
 */
- (bool)acceptsPs;

/**
 * Compares two printers.
 *
 * @param b another `GtkPrinter`
 * @return 0 if the printer match, a negative value if @a < @b,
 *   or a positive value if @a > @b
 */
- (int)compare:(OGTKPrinter*)b;

/**
 * Returns the backend of the printer.
 *
 * @return the backend of @printer
 */
- (GtkPrintBackend*)backend;

/**
 * Returns the printer’s capabilities.
 * 
 * This is useful when you’re using `GtkPrintUnixDialog`’s
 * manual-capabilities setting and need to know which settings
 * the printer can handle and which you must handle yourself.
 * 
 * This will return 0 unless the printer’s details are
 * available, see [method@Gtk.Printer.has_details] and
 * [method@Gtk.Printer.request_details].
 *
 * @return the printer’s capabilities
 */
- (GtkPrintCapabilities)capabilities;

/**
 * Returns default page size of @printer.
 *
 * @return a newly allocated `GtkPageSetup` with default page size
 *   of the printer.
 */
- (OGTKPageSetup*)defaultPageSize;

/**
 * Gets the description of the printer.
 *
 * @return the description of @printer
 */
- (OFString*)description;

/**
 * Retrieve the hard margins of @printer.
 * 
 * These are the margins that define the area at the borders
 * of the paper that the printer cannot print to.
 * 
 * Note: This will not succeed unless the printer’s details are
 * available, see [method@Gtk.Printer.has_details] and
 * [method@Gtk.Printer.request_details].
 *
 * @param top a location to store the top margin in
 * @param bottom a location to store the bottom margin in
 * @param left a location to store the left margin in
 * @param right a location to store the right margin in
 * @return %TRUE iff the hard margins were retrieved
 */
- (bool)hardMarginsWithTop:(double*)top bottom:(double*)bottom left:(double*)left right:(double*)right;

/**
 * Retrieve the hard margins of @printer for @paper_size.
 * 
 * These are the margins that define the area at the borders
 * of the paper that the printer cannot print to.
 * 
 * Note: This will not succeed unless the printer’s details are
 * available, see [method@Gtk.Printer.has_details] and
 * [method@Gtk.Printer.request_details].
 *
 * @param paperSize a `GtkPaperSize`
 * @param top a location to store the top margin in
 * @param bottom a location to store the bottom margin in
 * @param left a location to store the left margin in
 * @param right a location to store the right margin in
 * @return %TRUE iff the hard margins were retrieved
 */
- (bool)hardMarginsForPaperSizeWithPaperSize:(GtkPaperSize*)paperSize top:(double*)top bottom:(double*)bottom left:(double*)left right:(double*)right;

/**
 * Gets the name of the icon to use for the printer.
 *
 * @return the icon name for @printer
 */
- (OFString*)iconName;

/**
 * Gets the number of jobs currently queued on the printer.
 *
 * @return the number of jobs on @printer
 */
- (int)jobCount;

/**
 * Returns a description of the location of the printer.
 *
 * @return the location of @printer
 */
- (OFString*)location;

/**
 * Returns the name of the printer.
 *
 * @return the name of @printer
 */
- (OFString*)name;

/**
 * Returns the state message describing the current state
 * of the printer.
 *
 * @return the state message of @printer
 */
- (OFString*)stateMessage;

/**
 * Returns whether the printer details are available.
 *
 * @return %TRUE if @printer details are available
 */
- (bool)hasDetails;

/**
 * Returns whether the printer is accepting jobs
 *
 * @return %TRUE if @printer is accepting jobs
 */
- (bool)isAcceptingJobs;

/**
 * Returns whether the printer is currently active (i.e.
 * accepts new jobs).
 *
 * @return %TRUE if @printer is active
 */
- (bool)isActive;

/**
 * Returns whether the printer is the default printer.
 *
 * @return %TRUE if @printer is the default
 */
- (bool)isDefault;

/**
 * Returns whether the printer is currently paused.
 * 
 * A paused printer still accepts jobs, but it is not
 * printing them.
 *
 * @return %TRUE if @printer is paused
 */
- (bool)isPaused;

/**
 * Returns whether the printer is virtual (i.e. does not
 * represent actual printer hardware, but something like
 * a CUPS class).
 *
 * @return %TRUE if @printer is virtual
 */
- (bool)isVirtual;

/**
 * Lists all the paper sizes @printer supports.
 * 
 * This will return and empty list unless the printer’s details
 * are available, see [method@Gtk.Printer.has_details] and
 * [method@Gtk.Printer.request_details].
 *
 * @return a newly
 *   allocated list of newly allocated `GtkPageSetup`s.
 */
- (GList*)listPapers;

/**
 * Requests the printer details.
 * 
 * When the details are available, the
 * [signal@Gtk.Printer::details-acquired] signal
 * will be emitted on @printer.
 *
 */
- (void)requestDetails;

@end