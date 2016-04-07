#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSBasePathToElementType;



/* ChangeDescriptionType */
@interface MPSEWSChangeDescriptionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSChangeDescriptionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;


@end

