#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSidAndAttributesType;



/* NonEmptyArrayOfRestrictedGroupIdentifiersType */
@interface MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSidAndAttributesType*>* restrictedGroupIdentifier;


- (void) addRestrictedGroupIdentifier:(MPSEWSSidAndAttributesType*) elem;
@end

