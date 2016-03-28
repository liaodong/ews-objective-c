#import <Foundation/Foundation.h>






/* TimeZoneType */
@interface MPSEWSTimeZoneType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* timeZoneName  /* xs:string */;
@property (strong) NSString* baseOffset    /* xs:duration */;


@end

