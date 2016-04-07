#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSTransitionTargetType;



/* TransitionType */
@interface MPSEWSTransitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTransitionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTransitionTargetType* to;


@end

