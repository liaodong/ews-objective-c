#import <Foundation/Foundation.h>



@class MPSEWSSearchExpressionType;



/* RestrictionType */
@interface MPSEWSRestrictionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRestrictionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchExpressionType* searchExpression;


@end

