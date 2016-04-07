#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ArrayOfSmtpAddressType */
@interface MPSEWSArrayOfSmtpAddressType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSmtpAddressType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* smtpAddress /* MPSEWSNonEmptyStringType */;


- (void) addSmtpAddress:(NSString*) elem;
@end

