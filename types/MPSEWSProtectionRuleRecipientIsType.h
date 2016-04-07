#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ProtectionRuleRecipientIsType */
@interface MPSEWSProtectionRuleRecipientIsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleRecipientIsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* MPSEWSProtectionRuleValueType */;


- (void) addValue:(NSString*) elem;
@end

