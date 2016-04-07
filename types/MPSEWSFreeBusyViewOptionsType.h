#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDuration;



/* FreeBusyViewOptionsType */
@interface MPSEWSFreeBusyViewOptionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFreeBusyViewOptionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSDuration*            timeWindow;
@property (strong) NSNumber*                  mergedFreeBusyIntervalInMinutes  /* xs:int */;
@property (strong) NSMutableArray<NSString*>* requestedView                    /* MPSEWSFreeBusyViewType */;


@end

