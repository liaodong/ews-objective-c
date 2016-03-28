#import <Foundation/Foundation.h>






/* ConflictResultsType */
@interface MPSEWSConflictResultsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* count  /* xs:int */;


@end

