#import <Foundation/Foundation.h>






/* UserIdType */
@interface EWSUserIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* sID                 /* xs:string */;
@property (strong) NSString* primarySmtpAddress  /* xs:string */;
@property (strong) NSString* displayName         /* xs:string */;
@property (strong) NSString* distinguishedUser   /* EWSDistinguishedUserType */;


@end

