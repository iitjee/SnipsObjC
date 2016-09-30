/*
-(FETCHING) To efficiently manage the results returned from a Core Data fetch request to provide data for a UITableView object.
-(TRACKING) Optionally monitor changes to objects in the associated managed object context, and report changes in the results set to its delegate (see The Controller’s Delegate).
-(CACHING aka MEMORY ONLY TRACKING) Optionally cache the results of its computation so that if the same data is subsequently re-displayed, the work does not have to be repeated (see The Cache).

If all the three are used, It's referred as FULL PERSISTENT TRACKING

*/

Creating the Fetched Results Controller: You provide four parameters:
- A fetch request. Atleast one sort descriptor to order the results + An optional Predicate
- A managed object context. The controller uses this context to execute the fetch request.
-*** Optionally, a key path on result objects that returns the section name. The controller uses the key path to split the results into sections (passing nil indicates that the controller should generate a single section).
- Optionally, the name of the cache file the controller should use (passing nil prevents caching). Using a cache can avoid the overhead of computing the section and index information.

Finally, Call performFetch:
        NSError *error;
        BOOL success = [controller performFetch:&error];
       
       
/*    TRACKING    */ 
-----------------------
Conforming to Delegate:
myFetchedResultsController.delegate = self; //add this in the method in which you lazy instantiate your UIFetchedResultsController object

Delegate Methods:
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller; //usually you write [self.tableView beginUpdates]; in it

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller;  //usually you write [self.tableView endUpdates]; in it
   
- (void)controller:(NSFetchedResultsController *)controller 
   didChangeObject:(id)anObject   //The object in controller’s fetched results that changed.
       atIndexPath:(NSIndexPath *)indexPath   //The index path of the changed object (this value is nil for insertions).
     forChangeType:(NSFetchedResultsChangeType)type   //type of change.
      newIndexPath:(NSIndexPath *)newIndexPath; //The destination path for the object for insertions or moves (this value is nil for a deletion).
      
- (void)controller:(NSFetchedResultsController *)controller 
  didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo 
           atIndex:(NSUInteger)sectionIndex 
     forChangeType:(NSFetchedResultsChangeType)type;
  

Notes: - beginUpdates and endUpdates methods of tableview can be used to refresh it, when there are changes in the MOC
       - types: NSFetchedResultsChangeInsert, NSFetchedResultsChangeDelete, NSFetchedResultsChangeMove, NSFetchedResultsChangeUpdate

typical eg: 
-------------
//handles change in Entity Objects
-(void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
    
    UITableView *tableView = self.tableView;
    
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate: {
            Course *changedCourse = [self.fetchedResultsController objectAtIndexPath:indexPath];
            UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
            cell.textLabel.text = changedCourse.title;
        }
            break;
            
        case NSFetchedResultsChangeMove:
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
            [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }

}
//Handles Change in Sections
-(void) controller:(NSFetchedResultsController *)controller didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}



