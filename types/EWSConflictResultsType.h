#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"



/* ConflictResultsType */
@interface EWSConflictResultsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* count  /* xs:int */;


@end

