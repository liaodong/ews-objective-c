#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfArraysOfTrackingPropertiesType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSMessageTrackingReportType;



/* GetMessageTrackingReportResponseMessageType */
@interface MPSEWSGetMessageTrackingReportResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetMessageTrackingReportResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSMessageTrackingReportType*             messageTrackingReport;
@property (strong) MPSEWSArrayOfStringsType*                    diagnostics;
@property (strong) MPSEWSArrayOfArraysOfTrackingPropertiesType* errors;
@property (strong) MPSEWSArrayOfTrackingPropertiesType*         properties;


@end

