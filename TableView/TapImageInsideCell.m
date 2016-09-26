/*
    1. It's v.imp that property is strong. Check out what happens otherwise
    2. 
*/

//1. In interface
@property (strong, nonatomic) UIImageView *tappedImageView;


//2. Initialize and configure the `tappedImageView` in viewDidLoad


//3. In `cellForRowAtIndexPath` method
cell.imageView.userInteractionEnabled = YES;
cell.imageView.tag = indexPath.row; //assigns tag to each imageView, we don't need it. Just for educational purposes :)

UITapGestureRecognizer *tapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(<#myTapFunction:#>)];
tapped.numberOfTapsRequired = 1;
[cell.imageView addGestureRecognizer:tapped];

//4. Define myTapFunction
/* sender is v.important, it's the only way you know something about the item which user has tapped */
-(void)myTapFunction :(UITapGestureRecognizer *) sender
{   
    NSLog(@"Tag = %d", sender.view.tag);
    //Always copy the image, not the imageView itself
    //_tappedImageView = (UIImageView *)sender.view  //fails horribly
    _tappedImageView.image =  [(UIImageView *)sender.view image];
}

//(or) put id as argument type and get it like this.. no big differemce
// -(void)myTapFunction :(id) sender
// {   
//     UITapGestureRecognizer *gesture = (UITapGestureRecognizer *) sender;
// }
