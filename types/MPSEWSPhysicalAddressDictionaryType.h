#import <Foundation/Foundation.h>



@class MPSEWSPhysicalAddressDictionaryEntryType;



/* PhysicalAddressDictionaryType */
@interface MPSEWSPhysicalAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPhysicalAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSPhysicalAddressDictionaryEntryType*) elem;
@end

