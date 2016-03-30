#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSAlternateIdBaseType;



/* ConvertIdResponseMessageType */
@interface MPSEWSConvertIdResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConvertIdResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAlternateIdBaseType* alternateId;


@end

