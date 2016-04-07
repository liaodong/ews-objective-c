#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* MemberType */
@interface MPSEWSMemberType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMemberType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*               key      /* xs:string */;
@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) NSString*               status   /* MPSEWSMemberStatusType */;


@end

