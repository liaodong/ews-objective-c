#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSBasePagingType.h"



/* ContactsViewType */
@interface EWSContactsViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* initialName  /* xs:string */;
@property (retain) NSString* finalName    /* xs:string */;


@end

