#import <Foundation/Foundation.h>




#import "EWSItemIdType.h"
#import "EWSMessageType.h"



/* ResponseObjectCoreType */
@interface EWSResponseObjectCoreType : EWSMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType* referenceItemId;


@end

