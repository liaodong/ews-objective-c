#import <Foundation/Foundation.h>



@class MPSEWSSmtpDomain;



/* SmtpDomainList */
@interface MPSEWSSmtpDomainList : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSmtpDomainList*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSmtpDomain*>* domain;


- (void) addDomain:(MPSEWSSmtpDomain*) elem;
@end

