#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSmtpDomain;



/* SmtpDomainList */
@interface MPSEWSSmtpDomainList : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSmtpDomainList*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSmtpDomain*>* domain;


- (void) addDomain:(MPSEWSSmtpDomain*) elem;
@end

