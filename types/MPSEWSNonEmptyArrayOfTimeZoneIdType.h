#import <Foundation/Foundation.h>






/* NonEmptyArrayOfTimeZoneIdType */
@interface MPSEWSNonEmptyArrayOfTimeZoneIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfTimeZoneIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* id    /* xs:string */;


- (void) addId:(NSString*) elem;
@end

