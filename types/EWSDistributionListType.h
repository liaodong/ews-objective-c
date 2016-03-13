#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSContactSourceType.h"
#import "EWSItemType.h"



/* DistributionListType */
@interface EWSDistributionListType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* displayName    /* xs:string */;
@property (retain) NSString* fileAs         /* xs:string */;
@property (retain) NSString* contactSource  /* EWSContactSourceType */;


@end

