#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSNonEmptyArrayOfGroupIdentifiersType.h"
#import "EWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"



/* SerializedSecurityContextType */
@interface EWSSerializedSecurityContextType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                          userSid              /* xs:string */;
@property (retain) NSArray<EWSSidAndAttributesType*>* groupSids            /* EWSNonEmptyArrayOfGroupIdentifiersType */;
@property (retain) NSArray<EWSSidAndAttributesType*>* restrictedGroupSids  /* EWSNonEmptyArrayOfRestrictedGroupIdentifiersType */;
@property (retain) NSString*                          primarySmtpAddress   /* xs:string */;


@end

