#import <Foundation/Foundation.h>






/* ConflictResultsType */
@interface MPSEWSConflictResultsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConflictResultsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* count  /* xs:int */;


@end

