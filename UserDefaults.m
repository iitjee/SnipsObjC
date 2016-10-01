/*


*/



Storing UserDefaults:
NOTE: NSUserDefaults will always return an immutable version of the object you pass in.

EG: Here we store an array of images and array of text
/*  To store the information: */
// Get the standardUserDefaults object, store your UITableView data array against a key, synchronize the defaults
NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
[userDefaults setObject:arrayOfImage forKey:@"tableViewDataImage"];
[userDefaults setObject:arrayOfText forKey:@"tableViewDataText"];
[userDefaults synchronize];

/*  To retrieve the information: */
NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
NSArray *arrayOfImages = [userDefaults objectForKey:@"tableViewDataImage"];
NSArray *arrayOfText = [userDefaults objectForKey:@"tableViewDataText"];


/* Get all the Keys stored in NSUserDefaults */
eg: You want to remove all the stored values for all the corresponding keys
  - (void)resetDefaults {
    NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
    NSDictionary * dict = [defs dictionaryRepresentation];
    for (id key in dict) {
        [defs removeObjectForKey:key];
    }
    [defs synchronize];
}
