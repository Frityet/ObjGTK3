#include "OGTKExpression.h"

@implementation OGTKExpression

- (GtkExpression*)castedGObject
{
    return GTK_EXPRESSION([self gObject]);
}

@end
