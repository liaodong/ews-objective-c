#import <Foundation/Foundation.h>
#import "EWSItemType.h"






/* DistributionListType */
@interface EWSDistributionListType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* displayName    /* xs:string */;
@property (strong) NSString* fileAs         /* xs:string */;
@property (strong) NSString* contactSource  /* EWSContactSourceType */;


@end

