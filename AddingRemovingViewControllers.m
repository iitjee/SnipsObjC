/*
  Index:
  1. When a Navigation Controller is used, call any one of the following METHODS OF THE NAVIGATIONCONTROLLER
  2. Breaking out of navigation controller hierarchy to another view controller
  3. If you want only to make one exception, but otherwise stay in navigation controller stack, then use methods:
  4. To dismiss a MODALLY PRESENTED viewcontroller
*/



/* When a Navigation Controller is used, call any one of the following METHODS OF THE NAVIGATIONCONTROLLER  */

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated

Tip: Use viewControllers property(NSArray) to navigate through the stack :)
eg1 : //to pop to second level
[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];

eg2: //to pop 2 levels back from the current
NSUInteger ownIndex = [self.navigationController.viewControllers indexOfObject:self];
[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:ownIndex - 2] animated:YES];



/* Breaking out of navigation controller hierarchy to another view controller, call the next two lines */
[[[UIApplication sharedApplication] keyWindow].rootViewController dismissViewControllerAnimated:YES completion:nil];
[[UIApplication sharedApplication] keyWindow].rootViewController = newController;

Tip: Add second line in completion block of first line



/* If you want only to make one exception, but otherwise stay in navigation controller stack, then use next two methods: */
- (void)addChildViewController:(UIViewController *)childController
- (void)removeFromParentViewController

/* To dismiss a MODALLY PRESENTED viewcontroller */
[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
