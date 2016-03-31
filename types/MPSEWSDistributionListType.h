#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSMembersListType;



/* DistributionListType */
@interface MPSEWSDistributionListType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDistributionListType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*              displayName    /* xs:string */;
@property (strong) NSString*              fileAs         /* xs:string */;
@property (strong) NSString*              contactSource  /* MPSEWSContactSourceType */;
@property (strong) MPSEWSMembersListType* members;


@end

