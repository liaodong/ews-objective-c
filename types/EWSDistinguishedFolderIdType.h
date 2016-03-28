#import <Foundation/Foundation.h>
#import "EWSBaseFolderIdType.h"



@class EWSEmailAddressType;



/* DistinguishedFolderIdType */
@interface EWSDistinguishedFolderIdType : EWSBaseFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*            id         /* EWSDistinguishedFolderIdNameType */;
@property (strong) NSString*            changeKey  /* xs:string */;
@property (strong) EWSEmailAddressType* mailbox;


@end

