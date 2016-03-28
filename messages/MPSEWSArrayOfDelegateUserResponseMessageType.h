#import <Foundation/Foundation.h>



@class MPSEWSDelegateUserResponseMessageType;



/* ArrayOfDelegateUserResponseMessageType */
@interface MPSEWSArrayOfDelegateUserResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDelegateUserResponseMessageType*>* delegateUserResponseMessageType;


- (void) addDelegateUserResponseMessageType:(MPSEWSDelegateUserResponseMessageType*) elem;
@end

