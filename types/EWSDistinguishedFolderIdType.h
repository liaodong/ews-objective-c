#import <Foundation/Foundation.h>




#import "EWSDistinguishedFolderIdNameType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "EWSEmailAddressType.h"
#import "EWSBaseFolderIdType.h"



/* DistinguishedFolderIdType */
@interface EWSDistinguishedFolderIdType : EWSBaseFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*            id         /* EWSDistinguishedFolderIdNameType */;
@property (retain) NSString*            changeKey  /* xs:string */;
@property (retain) EWSEmailAddressType* mailbox;


@end

