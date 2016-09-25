/*
  1. Actionsheets have `UIAlertControllerStyleActionSheet` as their style in contrast to Alert Popups which have `UIAlertControllerStyleAlert`
*/


UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"<#Title#>" message:@"<#Message#>" preferredStyle:UIAlertControllerStyleActionSheet];

/*Add Actions as many as you want*/
UIAlertAction* <#action1#> = [UIAlertAction actionWithTitle:@"Restore the view to Main Building" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
  //perform desired Action

}];
[alert addAction:<#action1#>];

//Cancel Action
UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
}];
[alert addAction:cancelAction];

//Presenting ActionSheet
[self presentViewController:alert animated:YES completion:nil];

alert.view.tintColor = [UIColor <#redColor#>]; //don't add this line before presenting the viewController


