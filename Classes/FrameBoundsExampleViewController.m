#import "FrameBoundsExampleViewController.h"

@implementation FrameBoundsExampleViewController

@synthesize myView = _myView;

- (void)logFrameAndBounds
{
  NSLog(@"----------------------------------------------");
  NSLog(@"Frame: %@", NSStringFromCGRect(self.myView.frame));
  NSLog(@"Bounds: %@", NSStringFromCGRect(self.myView.bounds));
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  [self logFrameAndBounds];
}

- (IBAction)rotateButtonPressed:(id)sender
{
  static BOOL isRotated = NO;

  [UIView beginAnimations:@"rotate" context:nil];
  if (isRotated) self.myView.transform = CGAffineTransformIdentity;
  else self.myView.transform = CGAffineTransformMakeRotation(M_PI/4);
  [UIView commitAnimations];

  isRotated = !isRotated;

  [self logFrameAndBounds];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
  [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];

  [self logFrameAndBounds];
}

- (void)dealloc {
  self.myView = nil;
  [super dealloc];
}

@end
