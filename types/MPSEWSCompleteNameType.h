#import <Foundation/Foundation.h>






/* CompleteNameType */
@interface MPSEWSCompleteNameType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* title          /* xs:string */;
@property (strong) NSString* firstName      /* xs:string */;
@property (strong) NSString* middleName     /* xs:string */;
@property (strong) NSString* lastName       /* xs:string */;
@property (strong) NSString* suffix         /* xs:string */;
@property (strong) NSString* initials       /* xs:string */;
@property (strong) NSString* fullName       /* xs:string */;
@property (strong) NSString* nickname       /* xs:string */;
@property (strong) NSString* yomiFirstName  /* xs:string */;
@property (strong) NSString* yomiLastName   /* xs:string */;


@end

