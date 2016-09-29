/*


*/


//1. TestProtocolFile.h
@protocol MyProtocol <#NSObject#> //<NSObject> is optional

- (void)requiredMethod;

@optional
- (void)anOptionalMethod;
- (void)anotherOptionalMethod;

@required
- (void)anotherRequiredMethod;

@end





/*  In a class that complies to MyProtocol */
//TestClass.h

#import "TestProtocols.h"
@interface TestClass : NSObject  <TestProtocols>

@end

//TestClass.m

#import "TestClass.h"
@implemenation TestClass
    //optional to implement 
    -(void)testMethodOptional{
     // Your Code
    }

    //required to implement 
    -(void)testMethodRequired{
     // Your Code
    }
@end




