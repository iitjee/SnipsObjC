
__Switching Tabs__ : Two ways</br>
* Use `selectedViewController` property of UITabBarController <br/>
_eg:_ To go to second tab, <br/> 
```objective-c
self.myTabBarController.selectedViewController = [self.myTabBarController.viewControllers objectAtIndex:3];
```
* Use `selectedIndex` property of UITabBarController <br/>
_eg:_ `self.tabBarController.selectedIndex = 3;` <br/>
**_Note:_** However, if the selected view controller is currently the More navigation controller, this property contains the value NSNotFound.
So,  To select the More navigation controller itself, you must ONLY use `selectedViewController` property instead. </br>


__Preventing(Disabling) Selection of Tabs__ 
* Conform to `UITabBarControllerDelegate` protocol and `self.delegate = self` in its .m file (don't forget to add class name in SB) <br/>
_eg:_ To disable selection until user has logged in <br/>
```objective-c
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
  if(![self hasValidLogin] && (viewController != tabBarController.viewControllers[0])) return NO;
  else return YES;
}
```





































