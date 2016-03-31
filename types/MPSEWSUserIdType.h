#import <Foundation/Foundation.h>






/* UserIdType */
@interface MPSEWSUserIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* sID                   /* xs:string */;
@property (strong) NSString* primarySmtpAddress    /* xs:string */;
@property (strong) NSString* displayName           /* xs:string */;
@property (strong) NSString* distinguishedUser     /* MPSEWSDistinguishedUserType */;
@property (strong) NSString* externalUserIdentity  /* xs:string */;


@end

