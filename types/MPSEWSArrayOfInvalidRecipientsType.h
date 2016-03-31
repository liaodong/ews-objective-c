#import <Foundation/Foundation.h>



@class MPSEWSInvalidRecipientType;



/* ArrayOfInvalidRecipientsType */
@interface MPSEWSArrayOfInvalidRecipientsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfInvalidRecipientsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSInvalidRecipientType*>* invalidRecipient;


- (void) addInvalidRecipient:(MPSEWSInvalidRecipientType*) elem;
@end

