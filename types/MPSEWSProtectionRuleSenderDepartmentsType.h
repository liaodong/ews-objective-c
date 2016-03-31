#import <Foundation/Foundation.h>






/* ProtectionRuleSenderDepartmentsType */
@interface MPSEWSProtectionRuleSenderDepartmentsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleSenderDepartmentsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* MPSEWSProtectionRuleValueType */;


- (void) addValue:(NSString*) elem;
@end

