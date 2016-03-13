#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSPhysicalAddressKeyType.h"



/* PhysicalAddressDictionaryEntryType */
@interface EWSPhysicalAddressDictionaryEntryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* key              /* EWSPhysicalAddressKeyType */;
@property (retain) NSString* street           /* xs:string */;
@property (retain) NSString* city             /* xs:string */;
@property (retain) NSString* state            /* xs:string */;
@property (retain) NSString* countryOrRegion  /* xs:string */;
@property (retain) NSString* postalCode       /* xs:string */;


@end

