#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfGroupIdentifiersType;
@class MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType;



/* SerializedSecurityContextType */
@interface MPSEWSSerializedSecurityContextType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSerializedSecurityContextType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                            userSid              /* xs:string */;
@property (strong) MPSEWSNonEmptyArrayOfGroupIdentifiersType*           groupSids;
@property (strong) MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType* restrictedGroupSids;
@property (strong) NSString*                                            primarySmtpAddress   /* xs:string */;


@end

