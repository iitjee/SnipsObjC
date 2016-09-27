/*
*/


//1 [__NSDictionaryI setObject:forKeyedSubscript:]: unrecognized selector sent to instance 0x7f8955176960
You are adding object to an immutableDictionary.

        [tempDictionary setObject:@{
                            @"Location":[jsonListOfPlacesArr[i] valueForKey:@"Location"],
                            @"Longitude" :[jsonListOfPlacesArr[i] valueForKey:@"Longitude"],
                            @"Latitude" : [jsonListOfPlacesArr[i] valueForKey:@"Latitude"],
                             @"type"     : [jsonListOfPlacesArr[i] valueForKey:@"type"],
                            @"isSelectionChecked" : @NO
                            }
              forKey:jsonListOfPlacesArr[i][@"Location"]];

        
[tempDictionary setObject:[NSMutableDictionary dictionaryWithDictionary:@{
                                                                                  @"Location":[jsonListOfPlacesArr[i] valueForKey:@"Location"],
                                                                                  @"Longitude" :[jsonListOfPlacesArr[i] valueForKey:@"Longitude"],
                                                                                  @"Latitude" : [jsonListOfPlacesArr[i] valueForKey:@"Latitude"],
                                                                                  @"type"     : [jsonListOfPlacesArr[i] valueForKey:@"type"],
                                                                                  @"isSelectionChecked" : @NO
                                                                                  }
                                   ] forKey:jsonListOfPlacesArr[i][@"Location"]];
                                   
Object inside setObject is an immutable dictionary. So if you do something like tempDictionary[isSelectionChecjked]=@YES, you are trying
to modify an immutable object in first case.
So use second `dictionaryWithDictionary`
