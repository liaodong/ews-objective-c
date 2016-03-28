#import <Foundation/Foundation.h>



@class EWSSidAndAttributesType;



/* NonEmptyArrayOfGroupIdentifiersType */
@interface EWSNonEmptyArrayOfGroupIdentifiersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSSidAndAttributesType*>* groupIdentifier;


- (void) addGroupIdentifier:(EWSSidAndAttributesType*) elem;
@end

