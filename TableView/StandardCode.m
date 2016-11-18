/*
https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/TableView_iPhone/CreateConfigureTableView/CreateConfigureTableView.html#//apple_ref/doc/uid/TP40007451-CH6-SW31
*/


//if you give reuse idenitifer from code
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"<#MyReuseIdentifier#>";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    //cell configuration
}

//if you give reuse identifier from storyboard
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"<#MyReuseIdentifier#>";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
  
    //cell configuration
}
