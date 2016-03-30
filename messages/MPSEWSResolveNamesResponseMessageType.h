#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfResolutionType;



/* ResolveNamesResponseMessageType */
@interface MPSEWSResolveNamesResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResolveNamesResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfResolutionType* resolutionSet;


@end

