/*

*/

//1 In `interface` section
    UIRefreshControl *refreshControl;

//2 in `ViewDidLoad`
    refreshControl = [[UIRefreshControl alloc]init];
    refreshControl.tintColor = [UIColor blueColor];  
    refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"Refreshing, Please Wait.."
                                                                    attributes:@{
                                                                                 NSFontAttributeName : [UIFont fontWithName:@"Arial" size:16.0],
                                                                        NSForegroundColorAttributeName : [UIColor blueColor]
                                                                                 }
                                      ]; 
    [<#collectionView#> addSubview:refreshControl];
    [refreshControl addTarget:self action:@selector(refreshCollection) forControlEvents:UIControlEventValueChanged];

//3
//Make sure you tick 'Bounces Vertically' for CollectionView in StoryBoard.

//4 refresh method
- (void)refreshCollection {
    //refresh data

    [refreshControl endRefreshing];
    [<#collectionview#> reloadData];
}


//4 Once see the documentation before you use, don't miss :)
- (void)beginRefreshing;
Tells the control that a refresh operation was started programmatically.

- (void)endRefreshing;
Tells the control that a refresh operation has ended.

refreshing
A boolean property of refreshControl which Indicates whether a refresh operation has been triggered and is in progress.

