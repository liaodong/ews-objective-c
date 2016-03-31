#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* ArrayOfEmailAddressesType */
@interface MPSEWSArrayOfEmailAddressesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfEmailAddressesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressType*>* address;


- (void) addAddress:(MPSEWSEmailAddressType*) elem;
@end

