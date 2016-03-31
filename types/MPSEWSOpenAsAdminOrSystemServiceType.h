#import <Foundation/Foundation.h>



@class MPSEWSConnectingSIDType;



/* OpenAsAdminOrSystemServiceType */
@interface MPSEWSOpenAsAdminOrSystemServiceType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOpenAsAdminOrSystemServiceType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConnectingSIDType* connectingSID;


@end

