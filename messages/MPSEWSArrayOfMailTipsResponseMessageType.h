#import <Foundation/Foundation.h>



@class MPSEWSMailTipsResponseMessageType;



/* ArrayOfMailTipsResponseMessageType */
@interface MPSEWSArrayOfMailTipsResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfMailTipsResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMailTipsResponseMessageType*>* mailTipsResponseMessageType;


- (void) addMailTipsResponseMessageType:(MPSEWSMailTipsResponseMessageType*) elem;
@end

