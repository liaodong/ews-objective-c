#import <Foundation/Foundation.h>
#import "MPSEWSBasePagingType.h"






/* ContactsViewType */
@interface MPSEWSContactsViewType : MPSEWSBasePagingType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSContactsViewType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* initialName  /* xs:string */;
@property (strong) NSString* finalName    /* xs:string */;


@end

