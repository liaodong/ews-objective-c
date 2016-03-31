#import <Foundation/Foundation.h>



@class MPSEWSTransitionTargetType;



/* TransitionType */
@interface MPSEWSTransitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTransitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTransitionTargetType* to;


@end

