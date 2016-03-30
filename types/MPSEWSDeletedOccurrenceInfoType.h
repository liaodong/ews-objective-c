#import <Foundation/Foundation.h>






/* DeletedOccurrenceInfoType */
@interface MPSEWSDeletedOccurrenceInfoType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeletedOccurrenceInfoType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* start  /* xs:dateTime */;


@end

