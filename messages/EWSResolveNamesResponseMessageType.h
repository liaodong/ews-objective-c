#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSArrayOfResolutionType;



/* ResolveNamesResponseMessageType */
@interface EWSResolveNamesResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfResolutionType* resolutionSet;


@end

