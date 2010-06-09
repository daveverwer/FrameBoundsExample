@interface FrameBoundsExampleViewController : UIViewController
{
  UIView *_myView;
}

@property (nonatomic, retain) IBOutlet UIView *myView;

- (IBAction)rotateButtonPressed:(id)sender;

@end
