/*
  1. Title in `refreshControl` is an attributedString which has attributes parameter as dictionary
  2. Check out the delegate methods given at the bottom
*/

//1 In `interface` section
    UIRefreshControl *refreshControl;

//2 in `ViewDidLoad`
    refreshControl = [[UIRefreshControl alloc]init];
    refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"Refreshing, Please Wait.."
                                                                    attributes:@{
                                                                                 NSFontAttributeName : [UIFont fontWithName:@"Arial" size:16.0],
                                                                        NSForegroundColorAttributeName : [UIColor blueColor]
                                                                                 }
                                      ]; 
    [self.fbtable addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshTable) forControlEvents:UIControlEventValueChanged];

//3 refresh method
- (void)refreshTable {
    //TODO: refresh your data

    [refreshControl endRefreshing];
    [self.fbtable reloadData];
}


//4 Once see the documentation before you use, don't miss :)
- (void)beginRefreshing;
Tells the control that a refresh operation was started programmatically.

- (void)endRefreshing;
Tells the control that a refresh operation has ended.

refreshing
A boolean property of refreshControl which Indicates whether a refresh operation has been triggered and is in progress.





