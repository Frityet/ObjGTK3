/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKDialog.h"

@class OGTKPrintSettings;
@class OGTKWidget;
@class OGTKPageSetup;
@class OGTKWindow;

/**
 * `GtkPageSetupUnixDialog` implements a page setup dialog for platforms
 * which don’t provide a native page setup dialog, like Unix.
 * 
 * ![An example GtkPageSetupUnixDialog](pagesetupdialog.png)
 * 
 * It can be used very much like any other GTK dialog, at the
 * cost of the portability offered by the high-level printing
 * API in [class@Gtk.PrintOperation].
 * 
 * ## CSS nodes
 * 
 * `GtkPageSetupUnixDialog` has a single CSS node with the name `window` and
 * style class `.pagesetup`.
 *
 */
@interface OGTKPageSetupUnixDialog : OGTKDialog
{

}


/**
 * Constructors
 */
- (instancetype)initWithTitle:(OFString*)title parent:(OGTKWindow*)parent;

/**
 * Methods
 */

- (GtkPageSetupUnixDialog*)castedGObject;

/**
 * Gets the currently selected page setup from the dialog.
 *
 * @return the current page setup
 */
- (OGTKPageSetup*)pageSetup;

/**
 * Gets the current print settings from the dialog.
 *
 * @return the current print settings
 */
- (OGTKPrintSettings*)printSettings;

/**
 * Sets the `GtkPageSetup` from which the page setup
 * dialog takes its values.
 *
 * @param pageSetup a `GtkPageSetup`
 */
- (void)setPageSetup:(OGTKPageSetup*)pageSetup;

/**
 * Sets the `GtkPrintSettings` from which the page setup dialog
 * takes its values.
 *
 * @param printSettings a `GtkPrintSettings`
 */
- (void)setPrintSettings:(OGTKPrintSettings*)printSettings;

@end