#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSStringType.h"



/* MimeContentType */
@interface EWSMimeContentType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* characterSet  /* xs:string */;


@end

