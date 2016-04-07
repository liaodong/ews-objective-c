#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressDictionaryEntryType;



/* EmailAddressDictionaryType */
@interface MPSEWSEmailAddressDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEmailAddressDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSEmailAddressDictionaryEntryType*) elem;
@end

