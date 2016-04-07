#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* InternetHeaderType */
@interface MPSEWSInternetHeaderType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSInternetHeaderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* headerName  /* xs:string */;


@end

