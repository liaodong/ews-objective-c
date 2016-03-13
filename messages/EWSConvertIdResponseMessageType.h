#import <Foundation/Foundation.h>




#import "../types/EWSAlternateIdBaseType.h"
#import "EWSResponseMessageType.h"



/* ConvertIdResponseMessageType */
@interface EWSConvertIdResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSAlternateIdBaseType* alternateId;


@end

