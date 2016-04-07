#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSConnectingSIDType;



/* OpenAsAdminOrSystemServiceType */
@interface MPSEWSOpenAsAdminOrSystemServiceType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOpenAsAdminOrSystemServiceType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConnectingSIDType* connectingSID;


@end

