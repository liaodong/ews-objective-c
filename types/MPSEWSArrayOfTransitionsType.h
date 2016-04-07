#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSTransitionType;



/* ArrayOfTransitionsType */
@interface MPSEWSArrayOfTransitionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTransitionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*             id          /* xs:string */;
@property (strong) MPSEWSTransitionType* transition;


@end

