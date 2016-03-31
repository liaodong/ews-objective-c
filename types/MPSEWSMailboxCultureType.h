#import <Foundation/Foundation.h>
#import "MPSEWSLanguageType.h"






/* MailboxCultureType */
@interface MPSEWSMailboxCultureType : MPSEWSLanguageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailboxCultureType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

