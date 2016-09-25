/*

*/

@implementation ClassForSelectors
//No arguments
- (void) fooNoInputs {
    NSLog(@"Does nothing");
}
//1 argument
- (void) fooOneIput:(NSString*) first {
    NSLog(@"Logs %@", first);
}
//2 arguments
- (void) fooFirstInput:(NSString*) first secondInput:(NSString*) second {
    NSLog(@"Logs %@ then %@", first, second);
}

//calling them
- (void) performMethodsViaSelectors {
    [self performSelector:@selector(fooNoInputs)];
    [self performSelector:@selector(fooOneInput:) withObject:@"first"];
    [self performSelector:@selector(fooFirstInput:secondInput:) withObject:@"first" withObject:@"second"];
}
@end
