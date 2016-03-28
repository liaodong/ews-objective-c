#import <Foundation/Foundation.h>



@class EWSPhysicalAddressDictionaryEntryType;



/* PhysicalAddressDictionaryType */
@interface EWSPhysicalAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSPhysicalAddressDictionaryEntryType*>* entry;


- (void) addEntry:(EWSPhysicalAddressDictionaryEntryType*) elem;
@end

