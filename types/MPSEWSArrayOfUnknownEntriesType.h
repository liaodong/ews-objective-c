#import <Foundation/Foundation.h>






/* ArrayOfUnknownEntriesType */
@interface MPSEWSArrayOfUnknownEntriesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* unknownEntry  /* xs:string */;


@end

