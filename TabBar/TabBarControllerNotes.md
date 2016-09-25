
__Switching Tabs__ : Two ways</br>
* Use `selectedViewController` property of UITabBarController <br/>
_eg:_ To go to second tab, <br/> 
`self.myTabBarController.selectedViewController = [self.myTabBarController.viewControllers objectAtIndex:3];` <br/>

* Use `selectedIndex` property of UITabBarController <br/>
_eg:_ `self.tabBarController.selectedIndex = 3;` <br/>
**_Note:_** However, if the selected view controller is currently the More navigation controller, this property contains the value NSNotFound.
So,  To select the More navigation controller itself, you must ONLY use `selectedViewController` property instead. </br>







































