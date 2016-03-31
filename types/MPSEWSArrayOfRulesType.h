#import <Foundation/Foundation.h>



@class MPSEWSRuleType;



/* ArrayOfRulesType */
@interface MPSEWSArrayOfRulesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRulesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRuleType*>* rule;


- (void) addRule:(MPSEWSRuleType*) elem;
@end

