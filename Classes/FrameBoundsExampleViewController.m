#import "FrameBoundsExampleViewController.h"

@implementation FrameBoundsExampleViewController

@synthesize myView = _myView;

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (IBAction)logButtonPressed:(id)sender
{
  NSLog(@"Frame: %@", NSStringFromCGRect(self.myView.frame));
  NSLog(@"Bounds: %@", NSStringFromCGRect(self.myView.bounds));
}

- (IBAction)rotateButtonPressed:(id)sender
{
  static BOOL isRotated = NO;

  [UIView beginAnimations:@"rotate" context:nil];
  if (isRotated) self.myView.transform = CGAffineTransformIdentity;
  else self.myView.transform = CGAffineTransformMakeRotation(M_PI/4);
  [UIView commitAnimations];

  isRotated = !isRotated;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

- (void)dealloc {
  [super dealloc];
}

@end
