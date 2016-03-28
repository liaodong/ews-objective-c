#import <Foundation/Foundation.h>






/* UserIdType */
@interface MPSEWSUserIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* sID                 /* xs:string */;
@property (strong) NSString* primarySmtpAddress  /* xs:string */;
@property (strong) NSString* displayName         /* xs:string */;
@property (strong) NSString* distinguishedUser   /* MPSEWSDistinguishedUserType */;


@end

