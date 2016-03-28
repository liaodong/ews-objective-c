#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* InternetHeaderType */
@interface EWSInternetHeaderType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* headerName  /* xs:string */;


@end

