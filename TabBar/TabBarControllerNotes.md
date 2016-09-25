
__Switching Tabs__ : Two ways
* Use `selectedViewController` property of UITabBarController 
```objective-c
//To go to second tab,
self.myTabBarController.selectedViewController = [self.myTabBarController.viewControllers objectAtIndex:3];
```
* Use `selectedIndex` property of UITabBarController
```objective-c
self.tabBarController.selectedIndex = 3; //To go to second tab,
```
**_Note:_** However, if the selected view controller is currently the More navigation controller, `selectedIndex` property contains the value NSNotFound.Therefore, to select the More navigation controller itself, you must ONLY use `selectedViewController` property instead. </br>

--------
__Preventing(Disabling) Selection of Tabs (say until user has logged in)__ 
* Conform to `UITabBarControllerDelegate` protocol and `self.delegate = self` in its .m file (don't forget to add class name in SB) <br/>
```objective-c
//To disable selection until user has logged in
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
  if(![self hasValidLogin] && (viewController != tabBarController.viewControllers[0])) return NO;
  else return YES;
}
```
---------
__Preventing Popping to RootViewController when User clicks the Currently selected Tabbaritem__
* Conform to `UITabBarControllerDelegate` protocol and `self.delegate = self` in its .m file (don't forget to add class name in SB) <br/>
```objective-c
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if(viewController == self.selectedViewController) return NO;
    else return YES;
}
```




































