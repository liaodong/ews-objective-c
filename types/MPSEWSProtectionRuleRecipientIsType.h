#import <Foundation/Foundation.h>






/* ProtectionRuleRecipientIsType */
@interface MPSEWSProtectionRuleRecipientIsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProtectionRuleRecipientIsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* value /* MPSEWSProtectionRuleValueType */;


- (void) addValue:(NSString*) elem;
@end

