#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* MimeContentType */
@interface MPSEWSMimeContentType : MPSEWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* characterSet  /* xs:string */;


@end

