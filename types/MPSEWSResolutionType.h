#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSContactItemType;
@class MPSEWSEmailAddressType;



/* ResolutionType */
@interface MPSEWSResolutionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResolutionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) MPSEWSContactItemType*  contact;


@end

