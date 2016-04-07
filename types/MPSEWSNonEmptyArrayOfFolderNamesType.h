#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* NonEmptyArrayOfFolderNamesType */
@interface MPSEWSNonEmptyArrayOfFolderNamesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFolderNamesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* folderName /* xs:string */;


- (void) addFolderName:(NSString*) elem;
@end

