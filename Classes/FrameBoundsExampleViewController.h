@interface FrameBoundsExampleViewController : UIViewController
{
  UIView *_myView;
}

@property (nonatomic, retain) IBOutlet UIView *myView;

- (IBAction)logButtonPressed:(id)sender;
- (IBAction)rotateButtonPressed:(id)sender;

@end
