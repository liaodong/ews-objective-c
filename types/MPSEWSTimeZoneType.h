#import <Foundation/Foundation.h>



@class MPSEWSTimeChangeType;



/* TimeZoneType */
@interface MPSEWSTimeZoneType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeZoneType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*             timeZoneName  /* xs:string */;
@property (strong) NSString*             baseOffset    /* xs:duration */;
@property (strong) MPSEWSTimeChangeType* standard;
@property (strong) MPSEWSTimeChangeType* daylight;


@end

