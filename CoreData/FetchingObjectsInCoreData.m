/*
    Two ways:
    1. Via code
    2. Via Fetch Request Template (this is cool ;) )
*/



//Get the code from CodeSnippet Library in XCode

NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
NSEntityDescription *entity = [NSEntityDescription entityForName:@"Course" inManagedObjectContext:[self managedObjectContext]];
[fetchRequest setEntity:entity];

// Specify criteria for filtering which entities(objects) to fetch
NSPredicate *predicate = [NSPredicate predicateWithFormat:@" author ==[c] 'Vikhyath' "]; //note that single = also works;
//for predicates, checkout your snips ;) for now see 114534
[fetchRequest setPredicate:predicate];

// Specify how the fetched entities(objects) should be sorted
NSSortDescriptor *sortByDate = [[NSSortDescriptor alloc] initWithKey:@"releaseDate" ascending:YES];
//add any more sort descriptors and do mention in next line
[fetchRequest setSortDescriptors:[NSArray arrayWithObjects:sortByDate, nil]];

NSError *error = nil;
NSArray *fetchedObjects = [[self managedObjectContext] executeFetchRequest:fetchRequest error:&error];
if (fetchedObjects == nil) {
    //Handle 'No results' error
    NSLog(@"There's a problem %@, error);
}

for(Course *c in fetchedObjects)
{ 
  NSLog(@"Course: %@ by author: %@, c.title, c.author); //we are able to use . syntax as we've created custom NSMO subclass remember?
}




/* Creating Fetch Request Template */

Watch 114535 -> Supercool!


NSFetchRequest *fetchRequest = [[self managedObjectModel] fetchRequestTemplateForName: @"Essential Courses"];
















