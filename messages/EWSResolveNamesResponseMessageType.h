#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfResolutionType.h"
#import "EWSResponseMessageType.h"



/* ResolveNamesResponseMessageType */
@interface EWSResolveNamesResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfResolutionType* resolutionSet;


@end

