#import <Foundation/Foundation.h>






/* PhoneCallIdType */
@interface MPSEWSPhoneCallIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneCallIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

