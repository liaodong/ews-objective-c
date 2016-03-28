#import <Foundation/Foundation.h>



@class EWSDelegateUserResponseMessageType;



/* ArrayOfDelegateUserResponseMessageType */
@interface EWSArrayOfDelegateUserResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSDelegateUserResponseMessageType*>* delegateUserResponseMessageType;


- (void) addDelegateUserResponseMessageType:(EWSDelegateUserResponseMessageType*) elem;
@end

