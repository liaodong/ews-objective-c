#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfGroupIdentifiersType;
@class MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType;



/* SerializedSecurityContextType */
@interface MPSEWSSerializedSecurityContextType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSerializedSecurityContextType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                            userSid              /* xs:string */;
@property (strong) MPSEWSNonEmptyArrayOfGroupIdentifiersType*           groupSids;
@property (strong) MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType* restrictedGroupSids;
@property (strong) NSString*                                            primarySmtpAddress   /* xs:string */;


@end

