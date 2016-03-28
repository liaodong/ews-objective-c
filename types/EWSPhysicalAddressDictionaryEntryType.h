#import <Foundation/Foundation.h>






/* PhysicalAddressDictionaryEntryType */
@interface EWSPhysicalAddressDictionaryEntryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* key              /* EWSPhysicalAddressKeyType */;
@property (strong) NSString* street           /* xs:string */;
@property (strong) NSString* city             /* xs:string */;
@property (strong) NSString* state            /* xs:string */;
@property (strong) NSString* countryOrRegion  /* xs:string */;
@property (strong) NSString* postalCode       /* xs:string */;


@end

