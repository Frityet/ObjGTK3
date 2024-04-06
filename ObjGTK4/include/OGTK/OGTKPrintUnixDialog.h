/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGTKDialog.h"

#if defined(OGTK_UNIX_DIALOG)

@class OGTKPageSetup;
@class OGTKPrinter;
@class OGTKWidget;
@class OGTKPrintSettings;
@class OGTKWindow;

/**
 * `GtkPrintUnixDialog` implements a print dialog for platforms
 * which don’t provide a native print dialog, like Unix.
 *
 * ![An example GtkPrintUnixDialog](printdialog.png)
 *
 * It can be used very much like any other GTK dialog, at the cost of
 * the portability offered by the high-level printing API with
 * [class@Gtk.PrintOperation].
 *
 * In order to print something with `GtkPrintUnixDialog`, you need to
 * use [method@Gtk.PrintUnixDialog.get_selected_printer] to obtain a
 * [class@Gtk.Printer] object and use it to construct a [class@Gtk.PrintJob]
 * using [ctor@Gtk.PrintJob.new].
 *
 * `GtkPrintUnixDialog` uses the following response values:
 *
 * - %GTK_RESPONSE_OK: for the “Print” button
 * - %GTK_RESPONSE_APPLY: for the “Preview” button
 * - %GTK_RESPONSE_CANCEL: for the “Cancel” button
 *
 * # GtkPrintUnixDialog as GtkBuildable
 *
 * The `GtkPrintUnixDialog` implementation of the `GtkBuildable` interface
 * exposes its @notebook internal children with the name “notebook”.
 *
 * An example of a `GtkPrintUnixDialog` UI definition fragment:
 *
 * ```xml
 * <object class="GtkPrintUnixDialog" id="dialog1">
 *   <child internal-child="notebook">
 *     <object class="GtkNotebook" id="notebook">
 *       <child>
 *         <object type="GtkNotebookPage">
 *           <property name="tab_expand">False</property>
 *           <property name="tab_fill">False</property>
 *           <property name="tab">
 *             <object class="GtkLabel" id="tablabel">
 *               <property name="label">Tab label</property>
 *             </object>
 *           </property>
 *           <property name="child">
 *             <object class="GtkLabel" id="tabcontent">
 *               <property name="label">Content on notebook tab</property>
 *             </object>
 *           </property>
 *         </object>
 *       </child>
 *     </object>
 *   </child>
 * </object>
 * ```
 *
 * # CSS nodes
 *
 * `GtkPrintUnixDialog` has a single CSS node with name window. The style classes
 * dialog and print are added.
 *
 */
@interface OGTKPrintUnixDialog : OGTKDialog
{

}


/**
 * Constructors
 */
- (instancetype)initWithTitle:(OFString*)title parent:(OGTKWindow*)parent;

/**
 * Methods
 */

- (GtkPrintUnixDialog*)castedGObject;

/**
 * Adds a custom tab to the print dialog.
 *
 * @param child the widget to put in the custom tab
 * @param tabLabel the widget to use as tab label
 */
- (void)addCustomTabWithChild:(OGTKWidget*)child tabLabel:(OGTKWidget*)tabLabel;

/**
 * Gets the current page of the `GtkPrintUnixDialog`.
 *
 * @return the current page of @dialog
 */
- (int)currentPage;

/**
 * Gets whether to embed the page setup.
 *
 * @return whether to embed the page setup
 */
- (bool)embedPageSetup;

/**
 * Gets whether there is a selection.
 *
 * @return whether there is a selection
 */
- (bool)hasSelection;

/**
 * Gets the capabilities that have been set on this `GtkPrintUnixDialog`.
 *
 * @return the printing capabilities
 */
- (GtkPrintCapabilities)manualCapabilities;

/**
 * Gets the page setup that is used by the `GtkPrintUnixDialog`.
 *
 * @return the page setup of @dialog.
 */
- (OGTKPageSetup*)pageSetup;

/**
 * Gets whether a page setup was set by the user.
 *
 * @return whether a page setup was set by user.
 */
- (bool)pageSetupSet;

/**
 * Gets the currently selected printer.
 *
 * @return the currently selected printer
 */
- (OGTKPrinter*)selectedPrinter;

/**
 * Gets a new `GtkPrintSettings` object that represents the
 * current values in the print dialog.
 *
 * Note that this creates a new object, and you need to unref
 * it if don’t want to keep it.
 *
 * @return a new `GtkPrintSettings` object with the values from @dialog
 */
- (OGTKPrintSettings*)settings;

/**
 * Gets whether the print dialog allows user to print a selection.
 *
 * @return whether the application supports print of selection
 */
- (bool)supportSelection;

/**
 * Sets the current page number.
 *
 * If @current_page is not -1, this enables the current page choice
 * for the range of pages to print.
 *
 * @param currentPage the current page number.
 */
- (void)setCurrentPage:(int)currentPage;

/**
 * Embed page size combo box and orientation combo box into page setup page.
 *
 * @param embed embed page setup selection
 */
- (void)setEmbedPageSetup:(bool)embed;

/**
 * Sets whether a selection exists.
 *
 * @param hasSelection %TRUE indicates that a selection exists
 */
- (void)setHasSelection:(bool)hasSelection;

/**
 * This lets you specify the printing capabilities your application
 * supports.
 *
 * For instance, if you can handle scaling the output then you pass
 * %GTK_PRINT_CAPABILITY_SCALE. If you don’t pass that, then the dialog
 * will only let you select the scale if the printing system automatically
 * handles scaling.
 *
 * @param capabilities the printing capabilities of your application
 */
- (void)setManualCapabilities:(GtkPrintCapabilities)capabilities;

/**
 * Sets the page setup of the `GtkPrintUnixDialog`.
 *
 * @param pageSetup a `GtkPageSetup`
 */
- (void)setPageSetup:(OGTKPageSetup*)pageSetup;

/**
 * Sets the `GtkPrintSettings` for the `GtkPrintUnixDialog`.
 *
 * Typically, this is used to restore saved print settings
 * from a previous print operation before the print dialog
 * is shown.
 *
 * @param settings a `GtkPrintSettings`
 */
- (void)setSettings:(OGTKPrintSettings*)settings;

/**
 * Sets whether the print dialog allows user to print a selection.
 *
 * @param supportSelection %TRUE to allow print selection
 */
- (void)setSupportSelection:(bool)supportSelection;

@end

#endif
