/*

*/

**Dictionaries**
// To print out all key-value pairs in the NSDictionary myDict
for(id key in myDict)
    NSLog(@"key=%@ value=%@", key, [myDict objectForKey:key]);
    
    
//The block approach avoids running the lookup algorithm for every key:
[dict enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL* stop) {
  NSLog(@"%@ => %@", key, value);
}];


**Arrays**
//1. Classical
for (NSUInteger index = 0; index < [myArray count] ; index++) {
    [self doSomethingWith:[myArray objectAtIndex:index]];
}

// 2. Fast iteration
for (id element in myArray){
  NSLog(@"%@",element);
}

//3. Block approack
[myArray enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self doSomethingWith:object];
}];






