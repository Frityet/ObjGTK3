#import <ObjFW/ObjFW.h>
#import <OGTK/ObjGTK4-Umbrella.h>

#define auto __auto_type
@interface App : OFObject<OFApplicationDelegate>
@end

struct SigData {
    id target;
    SEL sel;
    Class class;
};

static void gsignal_handler(gpointer target, struct SigData *data)
{
    [data->target performSelector: data->sel withObject: [[data->class alloc] initWithGObject: target]];
}

@interface OGObject(SignalExtensions)

- (void)connectSignal: (OFString *)signal target: (id)target selector: (SEL)sel;

@end

@implementation OGObject(SignalExtensions)

- (void)connectSignal: (OFString *)signal target: (id)target selector: (SEL)sel
{
    struct SigData *data = malloc(sizeof(struct SigData));
    *data = (struct SigData){target, sel, self.class};
    g_signal_connect(self.gObject, signal.UTF8String, G_CALLBACK(gsignal_handler), data);
}

@end

@implementation App {
    size_t count;
}

- (void)applicationDidFinishLaunching:_
{
    auto app = [[OGTKApplication alloc] initWithApplicationId: @"net.frityet.app" flags: 0];
    [app connectSignal: @"activate" target: self selector: @selector(onActivate:)];

    [app runWithArgc: 0 argv: NULL];
    [OFApplication terminate];
}

- (void)onActivate: (OGTKApplication *)app
{
    auto wind = [[OGTKApplicationWindow alloc] init: app];
    wind.title = @"Hello, World!";

    [wind setDefaultSizeWithWidth: 640 height: 480];

    auto box = [[OGTKBox alloc] initWithOrientation: GTK_ORIENTATION_VERTICAL spacing: 0];
    box.halign = GTK_ALIGN_CENTER;
    box.valign = GTK_ALIGN_CENTER;

    wind.child = box;

    auto button = [[OGTKButton alloc] initWithLabel: @"Button clicked 0 times"];
    [button connectSignal: @"clicked" target: self selector: @selector(onButtonClicked:)];

    [box append: button];
    [wind present];
}

- (void)onButtonClicked: (OGTKButton *)button
{
    button.label = [OFString stringWithFormat: @"Button clicked %zu times", ++count];
}

@end

OF_APPLICATION_DELEGATE(App);
