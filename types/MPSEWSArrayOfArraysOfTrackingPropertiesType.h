#import <Foundation/Foundation.h>



@class MPSEWSArrayOfTrackingPropertiesType;



/* ArrayOfArraysOfTrackingPropertiesType */
@interface MPSEWSArrayOfArraysOfTrackingPropertiesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfArraysOfTrackingPropertiesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSArrayOfTrackingPropertiesType*>* arrayOfTrackingPropertiesType;


- (void) addArrayOfTrackingPropertiesType:(MPSEWSArrayOfTrackingPropertiesType*) elem;
@end

