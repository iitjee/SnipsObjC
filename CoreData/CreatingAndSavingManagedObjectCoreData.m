/*

*/

//0 Create an Entity "Course" and configure Attributes and Relationships in .xcmodeld just like you do .xcstoryboard
//you might have to see video for relationships


//1 Creating managed Object: With it's entity(table) name as Course in the mentioned Context(scratchPad)
NSManagedObject *myMO = [NSEntityDescription insertNewObjectForEntityName:@"Course" inManagedObjectContext:[self managedObjectContext]];

//configuraing Object: USE KVC (dot syntax doesn't work for NSManagedObject, there's a workaround though)
[myMO setValue: @"Core Data for iOS and OSX" forKey:@"Title"];
[myMO setValue: @"Viki" forKey: @"author"];
[myMO setValue: [NSData date] forKey: @"releaseDate"];
// ^ just see keys to go through attrbs

/*  Where is data stored? 
Go to ~/Library/Application\ Support -> com.xyz.YourProjName -> YourProjName.storeData (this is the persistent store file

Note: By default, Data is saved only after the app is terminated; see in applicationWillTerminate in Appdelegate

*/


//2 Saving Managed Object Context:

NSError *error = nil;
if(![[self managedObjectContext] save:&error])
{
  NSLog(@"An error occured while saving: %@", error);
}

//Since we have saved explicitly, data's immediately saved rather than after terminating











/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------/*
/* Creating Managed Object Subclasses */

Go to .xcmodeld,  and Editor->Create NSManagedObject Subclass
See if you need to tick `Use scalar types for primitive Data type`
Give same name as Entity Name
Now you check in utility inspector in .xcmodeld that the entity is connected to the class, just like in storyboard :)

Notice that in the .m file just created, u'll see @dynamic rather than @synthesize.
which means properties are generated dynamically at run time rather than synthesized at compile time

//1 Import Class into AppDelegate

//2
Course *myMO = (Course *)[NSEntityDescription insertNewObjectForEntityName:@"Course" inManagedObjectContext:[self managedObjectContext]];
myMO.title = @"..";
myMO.author = @"..";
myMO.releaseDate = @"..";

NSError *error = nil;
if(![[self managedObjectContext] save:&error])
{
  NSLog(@"An error occured while saving: %@", error);
}

/*
  Now you can use . syntax;  The benefit is that it's offering Compile time checking which KVC doesn't offer
  This  will be awesome!! You can create custom methods in entity's class file. Declare method in .h file, and implement in .m file and call using [myMo mysimpleMethod]
  
  Next, Is there a way to update the class file, if we make a change in entity in .xcmodeld: NOPE! :/ So be Careful! You've to manually update or create new class files again
  
*/


