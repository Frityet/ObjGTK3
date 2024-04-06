//Hand written

#include "OGGdkEvent.h"

@implementation OGGdkEvent

- (GdkEvent*)castedGObject
{
    return GDK_EVENT([self gObject]);
}

@end
