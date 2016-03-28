#import <Foundation/Foundation.h>
#import "EWSBasePagingType.h"






/* ContactsViewType */
@interface EWSContactsViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* initialName  /* xs:string */;
@property (strong) NSString* finalName    /* xs:string */;


@end

