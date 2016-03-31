#import <Foundation/Foundation.h>






/* UserMailboxType */
@interface MPSEWSUserMailboxType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserMailboxType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSNumber* isArchive  /* xs:boolean */;


@end

