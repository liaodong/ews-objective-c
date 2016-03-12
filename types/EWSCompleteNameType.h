#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* CompleteNameType */
@interface EWSCompleteNameType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* title          /* xs:string */;
@property (retain) NSString* firstName      /* xs:string */;
@property (retain) NSString* middleName     /* xs:string */;
@property (retain) NSString* lastName       /* xs:string */;
@property (retain) NSString* suffix         /* xs:string */;
@property (retain) NSString* initials       /* xs:string */;
@property (retain) NSString* fullName       /* xs:string */;
@property (retain) NSString* nickname       /* xs:string */;
@property (retain) NSString* yomiFirstName  /* xs:string */;
@property (retain) NSString* yomiLastName   /* xs:string */;


@end

