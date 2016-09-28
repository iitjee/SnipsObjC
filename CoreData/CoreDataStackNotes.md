
Core Data is not a Db. It's a Db Manager with SQLite as it's Db (aka persistent store).

Saving/Persist = 'Manage' => CoreData (with no second thought)
DataModel => Managed Object


**MOM**: It's a SCHEMA (collection of entities=tables). Richer the MOM, More u'll CoreData useful
Put the objects you want to track in ur model & CoreData manages them

Entity = Tables = How you define the structre of managed objects
    **Entity = Attrbs + Relationships **
    
__Note:__ 
1. `description`, `color`, `font`, `isEditing` are reserved Keywords for Attrbs
2. Relationships: eg:  For Book, you've only one publisher. For publishers, you've many books



**MOC**: 
This's one your app interacts with most. It's the engine of CoreData
For eg: When you want to do redo/undo, you don't do on individual objects but on the entire context



**PSC:**
It sits in the middle of the stack which handles communication between the other two.
WE DON'T NEED TO CARE ABOUT THIS
