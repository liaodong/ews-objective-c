#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfArraysOfTrackingPropertiesType;
@class MPSEWSArrayOfFindMessageTrackingSearchResultType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSArrayOfTrackingPropertiesType;



/* FindMessageTrackingReportResponseMessageType */
@interface MPSEWSFindMessageTrackingReportResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMessageTrackingReportResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfStringsType*                         diagnostics;
@property (strong) MPSEWSArrayOfFindMessageTrackingSearchResultType* messageTrackingSearchResults;
@property (strong) NSString*                                         executedSearchScope           /* xs:string */;
@property (strong) MPSEWSArrayOfArraysOfTrackingPropertiesType*      errors;
@property (strong) MPSEWSArrayOfTrackingPropertiesType*              properties;


@end

