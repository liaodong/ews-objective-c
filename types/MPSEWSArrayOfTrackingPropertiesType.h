#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSTrackingPropertyType;



/* ArrayOfTrackingPropertiesType */
@interface MPSEWSArrayOfTrackingPropertiesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTrackingPropertiesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSTrackingPropertyType*>* trackingPropertyType;


- (void) addTrackingPropertyType:(MPSEWSTrackingPropertyType*) elem;
@end

