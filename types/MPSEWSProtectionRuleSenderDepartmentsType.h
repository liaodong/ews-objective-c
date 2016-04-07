#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ProtectionRuleSenderDepartmentsType */
@interface MPSEWSProtectionRuleSenderDepartmentsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleSenderDepartmentsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* MPSEWSProtectionRuleValueType */;


- (void) addValue:(NSString*) elem;
@end

