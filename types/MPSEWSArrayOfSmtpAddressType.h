#import <Foundation/Foundation.h>






/* ArrayOfSmtpAddressType */
@interface MPSEWSArrayOfSmtpAddressType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSmtpAddressType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* smtpAddress /* MPSEWSNonEmptyStringType */;


- (void) addSmtpAddress:(NSString*) elem;
@end

