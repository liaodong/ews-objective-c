#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* ArrayOfEmailAddressesType */
@interface MPSEWSArrayOfEmailAddressesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfEmailAddressesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressType*>* address;


- (void) addAddress:(MPSEWSEmailAddressType*) elem;
@end

