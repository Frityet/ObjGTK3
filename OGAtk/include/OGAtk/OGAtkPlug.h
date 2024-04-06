/*
 * SPDX-FileCopyrightText: 2015-2017 Tyler Burton <software@tylerburton.ca>
 * SPDX-FileCopyrightText: 2015-2024 The ObjGTK authors, see AUTHORS file
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */

#import "OGAtkObject.h"

/**
 * Toplevel for embedding into other processes
 * 
 * See [class@AtkSocket]
 *
 */
@interface OGAtkPlug : OGAtkObject
{

}


/**
 * Constructors
 */
- (instancetype)init;

/**
 * Methods
 */

- (AtkPlug*)castedGObject;

/**
 * Gets the unique ID of an #AtkPlug object, which can be used to
 * embed inside of an #AtkSocket using atk_socket_embed().
 * 
 * Internally, this calls a class function that should be registered
 * by the IPC layer (usually at-spi2-atk). The implementor of an
 * #AtkPlug object should call this function (after atk-bridge is
 * loaded) and pass the value to the process implementing the
 * #AtkSocket, so it could embed the plug.
 *
 * @return the unique ID for the plug
 */
- (OFString*)id;

@end