#import <Foundation/Foundation.h>
#import "EWSStringType.h"






/* MimeContentType */
@interface EWSMimeContentType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* characterSet  /* xs:string */;


@end

