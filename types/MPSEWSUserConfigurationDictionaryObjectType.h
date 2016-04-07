#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* UserConfigurationDictionaryObjectType */
@interface MPSEWSUserConfigurationDictionaryObjectType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryObjectType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                  type   /* MPSEWSUserConfigurationDictionaryObjectTypesType */;
@property (strong) NSMutableArray<NSString*>* value /* xs:string */;


- (void) addValue:(NSString*) elem;
@end

