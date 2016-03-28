#import <Foundation/Foundation.h>






/* ConnectingSIDType */
@interface EWSConnectingSIDType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* principalName       /* xs:string */;
@property (strong) NSString* sID                 /* xs:string */;
@property (strong) NSString* primarySmtpAddress  /* xs:string */;


@end

