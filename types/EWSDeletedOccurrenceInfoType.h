#import <Foundation/Foundation.h>






/* DeletedOccurrenceInfoType */
@interface EWSDeletedOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* start  /* xs:dateTime */;


@end

