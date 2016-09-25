/*
  1. A best example of Strong vs. Weak http://stackoverflow.com/questions/11013587/differences-between-strong-and-weak-in-objective-c
  2. There's no direct way of hiding; you've to add and remove the object.  
*/


//1
//Add a rightBarButtonItem in SB and Make a STRONG IBOutle

//2
    NSMutableArray *navigationBarButtons;

//3
    navigationBarButtons = [self.navigationItem.rightBarButtonItems mutableCopy];

//4 Adds(Unhides) barbuttonitem object
if(![navigationBarButtons containsObject:self.getFeedButton]) {
        [navigationBarButtons addObject:self.getFeedButton];
        [self.navigationItem setRightBarButtonItems:navigationBarButtons];
    }

//5 Removes(Hides) barbuttonitem object
if(<#your-condition#> {
    [navigationBarButtons removeObject:self.getFeedButton];
    [self.navigationItem setRightBarButtonItems:navigationBarButtons];
    }












