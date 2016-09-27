/*
  performSelector:withObject:afterDelay: cannot be used to call primitive parameters.
  eg: [self performSelector:@selector(sortByName) withObject:nil afterDelay:1];

*/


/* Following code can be used even for primitive parameters */
int parameter1 = 12;
float parameter2 = 144.1;

// Delay execution of my block for 10 seconds.
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
    NSLog(@"parameter1: %d parameter2: %f", parameter1, parameter2);
});


Notes: This sort of delay was also used in alert popup. :) Problem with performSelector:withObject:afterDelay: was you've to make
a separated method to dismiss alertcontroller and in there you need to get reference to uialertcontroller to dismiss which's a
nonsense as you've to make it global. The above code works best! :)
