#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfAlternateIdsType;



/* ConvertIdType */
@interface EWSConvertIdType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                           destinationFormat  /* EWSIdFormatType */;
@property (strong) EWSNonEmptyArrayOfAlternateIdsType* sourceIds;


@end

