#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ConnectingSIDType */
@interface MPSEWSConnectingSIDType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConnectingSIDType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* principalName       /* MPSEWSNonEmptyStringType */;
@property (strong) NSString* sID                 /* MPSEWSNonEmptyStringType */;
@property (strong) NSString* primarySmtpAddress  /* MPSEWSNonEmptyStringType */;
@property (strong) NSString* smtpAddress         /* MPSEWSNonEmptyStringType */;


@end

