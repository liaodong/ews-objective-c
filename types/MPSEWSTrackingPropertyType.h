#import <Foundation/Foundation.h>






/* TrackingPropertyType */
@interface MPSEWSTrackingPropertyType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTrackingPropertyType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;
@property (strong) NSString* value  /* xs:string */;


@end

