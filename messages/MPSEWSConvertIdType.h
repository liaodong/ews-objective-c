#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfAlternateIdsType;



/* ConvertIdType */
@interface MPSEWSConvertIdType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConvertIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                              destinationFormat  /* MPSEWSIdFormatType */;
@property (strong) MPSEWSNonEmptyArrayOfAlternateIdsType* sourceIds;


@end

