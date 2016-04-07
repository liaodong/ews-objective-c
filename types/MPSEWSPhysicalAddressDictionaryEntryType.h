#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* PhysicalAddressDictionaryEntryType */
@interface MPSEWSPhysicalAddressDictionaryEntryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhysicalAddressDictionaryEntryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key              /* MPSEWSPhysicalAddressKeyType */;
@property (strong) NSString* street           /* xs:string */;
@property (strong) NSString* city             /* xs:string */;
@property (strong) NSString* state            /* xs:string */;
@property (strong) NSString* countryOrRegion  /* xs:string */;
@property (strong) NSString* postalCode       /* xs:string */;


@end

