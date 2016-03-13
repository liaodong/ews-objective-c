#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSStringType.h"



/* InternetHeaderType */
@interface EWSInternetHeaderType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* headerName  /* xs:string */;


@end

