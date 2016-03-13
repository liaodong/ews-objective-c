#import <Foundation/Foundation.h>




#import "../types/EWSIdFormatType.h"
#import "../types/EWSNonEmptyArrayOfAlternateIdsType.h"
#import "EWSBaseRequestType.h"



/* ConvertIdType */
@interface EWSConvertIdType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                           destinationFormat  /* EWSIdFormatType */;
@property (retain) EWSNonEmptyArrayOfAlternateIdsType* sourceIds;


@end

