/*
    1. Make XIB and class files(.h, .m) for each Cell. (Add the name of Class in XIB)
    2. Design them and connect IBOutlets. (Note: Names shouldn't match `textLabel`, `imageView`)
    3. We use Cell Identifiers same as their ClassNames so that the same thing can be used in loadNibNamed: method
       (loadNibNamed:<#xibFileName#>)
*/



-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    

        if(<#condition-for-firstCell#>)
            return [self populateDataUsingArray:<#mydataArray#> atIndexPath:indexPath];
            
        else if(<#condition-for-secondCell#>)
            return [self populateDataUsingArray:<#mydataArray#> atIndexPath:indexPath];
    
        
    //backup, just in case above two conditions fail
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BackupCell"];
    if(cell==nil)
        cell = [[UITableViewCell alloc]init];
    return cell;
}


//Next two are methods for cellForRowAtIndexPath: of each cell
-(<#UITVCell1#> *) populateDataUsingArray:(NSArray *)<#mydataArray#> atIndexPath:(NSIndexPath *)indexPath {
    
    NSString * const cellIdentifier1 = @"<#ClassNameOfCell1#>";
    <#UITVCell1#> *<#cell1#> = [<#tableView#> dequeueReusableCellWithIdentifier:cellIdentifier1];
    
    if(<#cell1#> ==nil) {
        NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:cellIdentifier1
                                                          owner:self
                                                        options:nil];
        <#cell1#> = [nibViews objectAtIndex: 0]; //first view on stack is the CellView
    }
    
    //configuring cell1
        
    return <#cell1#>;
}

-(<#UITVCell2#> *) populateDataUsingArray:(NSArray *)<#mydataArray#> atIndexPath:(NSIndexPath *)indexPath {
    
    NSString * const cellIdentifier2 = @"<#ClassNameOfCell2#>";
    <#UITVCell2#> *<#cell2#> = [<#tableView#> dequeueReusableCellWithIdentifier:cellIdentifier2];

    if(<#cell2#> == nil) {
        NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:cellIdentifier2
                                                          owner:self
                                                        options:nil];
        <#cell2#> = [nibViews objectAtIndex: 0];
    }
    
    //configuring cell2


    return <#cell2#>;
}
