#import <Foundation/Foundation.h>



@class MPSEWSTransitionType;



/* ArrayOfTransitionsType */
@interface MPSEWSArrayOfTransitionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTransitionsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*             id          /* xs:string */;
@property (strong) MPSEWSTransitionType* transition;


@end

