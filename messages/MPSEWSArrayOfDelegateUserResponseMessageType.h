#import <Foundation/Foundation.h>



@class MPSEWSDelegateUserResponseMessageType;



/* ArrayOfDelegateUserResponseMessageType */
@interface MPSEWSArrayOfDelegateUserResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfDelegateUserResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDelegateUserResponseMessageType*>* delegateUserResponseMessageType;


- (void) addDelegateUserResponseMessageType:(MPSEWSDelegateUserResponseMessageType*) elem;
@end

