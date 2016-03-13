#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSDuration.h"
#import "../types/EWSFreeBusyViewType.h"



/* FreeBusyViewOptionsType */
@interface EWSFreeBusyViewOptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSDuration*               timeWindow;
@property (retain) NSNumber*                  mergedFreeBusyIntervalInMinutes  /* xs:int */;
@property (retain) NSMutableArray<NSString*>* requestedView                    /* EWSFreeBusyViewType */;


@end

