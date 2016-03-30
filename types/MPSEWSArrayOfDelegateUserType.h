#import <Foundation/Foundation.h>



@class MPSEWSDelegateUserType;



/* ArrayOfDelegateUserType */
@interface MPSEWSArrayOfDelegateUserType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfDelegateUserType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDelegateUserType*>* delegateUser;


- (void) addDelegateUser:(MPSEWSDelegateUserType*) elem;
@end

