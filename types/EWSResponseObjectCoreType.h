#import <Foundation/Foundation.h>
#import "EWSMessageType.h"



@class EWSItemIdType;



/* ResponseObjectCoreType */
@interface EWSResponseObjectCoreType : EWSMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* referenceItemId;


@end

