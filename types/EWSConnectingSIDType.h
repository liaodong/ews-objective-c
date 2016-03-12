#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* ConnectingSIDType */
@interface EWSConnectingSIDType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* principalName       /* xs:string */;
@property (retain) NSString* sID                 /* xs:string */;
@property (retain) NSString* primarySmtpAddress  /* xs:string */;


@end

