#import <Foundation/Foundation.h>



@class MPSEWSTrackingPropertyType;



/* ArrayOfTrackingPropertiesType */
@interface MPSEWSArrayOfTrackingPropertiesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfTrackingPropertiesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSTrackingPropertyType*>* trackingPropertyType;


- (void) addTrackingPropertyType:(MPSEWSTrackingPropertyType*) elem;
@end

