#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDistinguishedUserType.h"



/* UserIdType */
@interface EWSUserIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* sID                 /* xs:string */;
@property (retain) NSString* primarySmtpAddress  /* xs:string */;
@property (retain) NSString* displayName         /* xs:string */;
@property (retain) NSString* distinguishedUser   /* EWSDistinguishedUserType */;


@end

