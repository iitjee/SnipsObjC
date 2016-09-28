/*    Show Tutorial Only Once

Ensure all initial view controllers have a Storyboard ID.

In the storyboard, uncheck the "Is initial View Controller" attribute from the first view controller.

If you run your app at this point you'll read:

Failed to instantiate the default view controller for UIMainStoryboardFile 'MainStoryboard' - perhaps the designated entry point is not set?
And you'll notice that your window property in the app delegate is now nil.

In the app's setting, go to your target and the Info tab. There clear the value of Main storyboard file base name. On the General tab, clear the value for Main Interface. This will remove the warning. */

//Create the window and desired initial view controller in the app delegate's application:didFinishLaunchingWithOptions: method:
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    //if this doesn't work, once try with UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    UIViewController *viewController 
    
    // determine the initial view controller here and instantiate it with [storyboard instantiateViewControllerWithIdentifier:<storyboard id>];
        if(![[NSUserDefaults standardUserDefaults] boolForKey:@"hasSeenTutorial"])
        viewController = [storyboard instantiateViewControllerWithIdentifier:<#storyboard id#>];
        
        else 
        viewController = [storyboard instantiateViewControllerWithIdentifier:<#storyboard id#>];

    //Use this in your VC, [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"hasSeenTutorial"];


    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];

    return YES;
}
