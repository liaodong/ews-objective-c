#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSidAndAttributesType;



/* NonEmptyArrayOfGroupIdentifiersType */
@interface MPSEWSNonEmptyArrayOfGroupIdentifiersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfGroupIdentifiersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSidAndAttributesType*>* groupIdentifier;


- (void) addGroupIdentifier:(MPSEWSSidAndAttributesType*) elem;
@end

