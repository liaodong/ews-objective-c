#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSItemIdType;



/* PlayOnPhoneType */
@interface MPSEWSPlayOnPhoneType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPlayOnPhoneType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;
@property (strong) NSString*         dialString  /* xs:string */;


@end

