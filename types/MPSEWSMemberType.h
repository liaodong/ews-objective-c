#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* MemberType */
@interface MPSEWSMemberType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMemberType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*               key      /* xs:string */;
@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) NSString*               status   /* MPSEWSMemberStatusType */;


@end

