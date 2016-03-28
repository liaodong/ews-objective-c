#import <Foundation/Foundation.h>



@class EWSDelegateUserType;



/* ArrayOfDelegateUserType */
@interface EWSArrayOfDelegateUserType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSDelegateUserType*>* delegateUser;


- (void) addDelegateUser:(EWSDelegateUserType*) elem;
@end

