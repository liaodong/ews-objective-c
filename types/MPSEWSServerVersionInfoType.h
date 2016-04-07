#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ServerVersionInfoType */
@interface MPSEWSServerVersionInfoType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSServerVersionInfoType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* majorVersion      /* xs:int */;
@property (strong) NSNumber* minorVersion      /* xs:int */;
@property (strong) NSNumber* majorBuildNumber  /* xs:int */;
@property (strong) NSNumber* minorBuildNumber  /* xs:int */;
@property (strong) NSString* version           /* xs:string */;


@end

