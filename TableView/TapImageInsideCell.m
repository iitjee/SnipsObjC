//1. In `cellForRowAtIndexPath` method
cell.imageView.userInteractionEnabled = YES;
cell.imageView.tag = indexPath.row; //assigns tag to each imageView

UITapGestureRecognizer *tapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(<#myTapFunction#>)];
tapped.numberOfTapsRequired = 1;
[cell.imageView addGestureRecognizer:tapped];

//2. Define myTapFunction
-(void)myTapFunction :(id) sender
{
    UITapGestureRecognizer *gesture = (UITapGestureRecognizer *) sender;
    NSLog(@"Tag = %d", gesture.view.tag);
}