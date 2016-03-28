#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfGroupIdentifiersType;
@class EWSNonEmptyArrayOfRestrictedGroupIdentifiersType;



/* SerializedSecurityContextType */
@interface EWSSerializedSecurityContextType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                         userSid              /* xs:string */;
@property (strong) EWSNonEmptyArrayOfGroupIdentifiersType*           groupSids;
@property (strong) EWSNonEmptyArrayOfRestrictedGroupIdentifiersType* restrictedGroupSids;
@property (strong) NSString*                                         primarySmtpAddress   /* xs:string */;


@end

