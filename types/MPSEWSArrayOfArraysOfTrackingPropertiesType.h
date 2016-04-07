#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfTrackingPropertiesType;



/* ArrayOfArraysOfTrackingPropertiesType */
@interface MPSEWSArrayOfArraysOfTrackingPropertiesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfArraysOfTrackingPropertiesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSArrayOfTrackingPropertiesType*>* arrayOfTrackingPropertiesType;


- (void) addArrayOfTrackingPropertiesType:(MPSEWSArrayOfTrackingPropertiesType*) elem;
@end

