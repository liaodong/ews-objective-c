#import <Foundation/Foundation.h>



@class EWSSidAndAttributesType;



/* NonEmptyArrayOfRestrictedGroupIdentifiersType */
@interface EWSNonEmptyArrayOfRestrictedGroupIdentifiersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSSidAndAttributesType*>* restrictedGroupIdentifier;


- (void) addRestrictedGroupIdentifier:(EWSSidAndAttributesType*) elem;
@end

