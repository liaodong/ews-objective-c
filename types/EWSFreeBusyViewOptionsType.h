#import <Foundation/Foundation.h>



@class EWSDuration;



/* FreeBusyViewOptionsType */
@interface EWSFreeBusyViewOptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSDuration*               timeWindow;
@property (strong) NSNumber*                  mergedFreeBusyIntervalInMinutes  /* xs:int */;
@property (strong) NSMutableArray<NSString*>* requestedView                    /* EWSFreeBusyViewType */;


@end

