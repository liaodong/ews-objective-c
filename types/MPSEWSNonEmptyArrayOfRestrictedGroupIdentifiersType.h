#import <Foundation/Foundation.h>



@class MPSEWSSidAndAttributesType;



/* NonEmptyArrayOfRestrictedGroupIdentifiersType */
@interface MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSidAndAttributesType*>* restrictedGroupIdentifier;


- (void) addRestrictedGroupIdentifier:(MPSEWSSidAndAttributesType*) elem;
@end

