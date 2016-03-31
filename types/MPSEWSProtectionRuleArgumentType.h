#import <Foundation/Foundation.h>






/* ProtectionRuleArgumentType */
@interface MPSEWSProtectionRuleArgumentType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleArgumentType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* value  /* xs:string */;


@end

