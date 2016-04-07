#import <Foundation/Foundation.h>
#import "MPSEWSServiceConfiguration.h"






/* UnifiedMessageServiceConfiguration */
@interface MPSEWSUnifiedMessageServiceConfiguration : MPSEWSServiceConfiguration

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUnifiedMessageServiceConfiguration*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* umEnabled              /* xs:boolean */;
@property (strong) NSString* playOnPhoneDialString  /* xs:string */;
@property (strong) NSNumber* playOnPhoneEnabled     /* xs:boolean */;


@end

