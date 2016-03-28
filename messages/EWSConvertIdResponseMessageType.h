#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSAlternateIdBaseType;



/* ConvertIdResponseMessageType */
@interface EWSConvertIdResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAlternateIdBaseType* alternateId;


@end

