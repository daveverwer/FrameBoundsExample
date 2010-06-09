#import "FrameBoundsExampleAppDelegate.h"

@implementation FrameBoundsExampleAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [self.window addSubview:self.viewController.view];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)dealloc
{
  self.viewController = nil;
  self.window = nil;
  [super dealloc];
}

@end
