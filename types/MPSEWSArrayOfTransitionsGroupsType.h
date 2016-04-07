#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfTransitionsType;



/* ArrayOfTransitionsGroupsType */
@interface MPSEWSArrayOfTransitionsGroupsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTransitionsGroupsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSArrayOfTransitionsType*>* transitionsGroup;


- (void) addTransitionsGroup:(MPSEWSArrayOfTransitionsType*) elem;
@end

