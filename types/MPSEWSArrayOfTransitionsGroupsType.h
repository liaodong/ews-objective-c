#import <Foundation/Foundation.h>



@class MPSEWSArrayOfTransitionsType;



/* ArrayOfTransitionsGroupsType */
@interface MPSEWSArrayOfTransitionsGroupsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTransitionsGroupsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSArrayOfTransitionsType*>* transitionsGroup;


- (void) addTransitionsGroup:(MPSEWSArrayOfTransitionsType*) elem;
@end

