#import <Foundation/Foundation.h>



@class EWSImAddressDictionaryEntryType;



/* ImAddressDictionaryType */
@interface EWSImAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSImAddressDictionaryEntryType*>* entry;


- (void) addEntry:(EWSImAddressDictionaryEntryType*) elem;
@end

