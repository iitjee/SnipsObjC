/*
  1. Popups have `UIAlertControllerStyleAlert` as their style
*/

UIAlertController* alertPopup = [UIAlertController alertControllerWithTitle:@"<#Title#>" message:@"<#Messages#>" preferredStyle:UIAlertControllerStyleAlert ];
[self presentViewController:alert animated:YES completion:nil];

double delayInSeconds = <#1.0s#>;
dispatch_time_t popoutTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
dispatch_after(popoutTime, dispatch_get_main_queue(), ^{
        // code executed on main queues after delay
        [alertPopup dismissViewControllerAnimated:YES completion:nil];
    });
