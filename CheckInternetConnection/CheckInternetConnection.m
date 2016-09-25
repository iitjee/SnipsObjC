
/*
	1. Include Reachability .h, .m files
	2. Add following Code
*/

Reachability *networkReachability = [Reachability reachabilityForInternetConnection];   
NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];

if (networkStatus == NotReachable) {
	NSLog(@"There IS NO internet connection");

	UIAlertController* noInternetAlert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"It seems there IS NO Internet Connection, Please check back later" preferredStyle:UIAlertControllerStyleAlert ];
	[self presentViewController:noInternetAlert animated:YES completion:nil];
	[self performSelector:@selector(dismissAlertController) withObject:self afterDelay:1.6];
} else {        
     NSLog(@"There IS internet connection");        
}

//Dismisses Alert Popups
#pragma mark - dismiss AlertController
-(void) dismissAlertController {
    [self dismissViewControllerAnimated:YES completion:nil];
}













