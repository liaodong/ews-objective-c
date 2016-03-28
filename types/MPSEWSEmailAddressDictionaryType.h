#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressDictionaryEntryType;



/* EmailAddressDictionaryType */
@interface MPSEWSEmailAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSEmailAddressDictionaryEntryType*) elem;
@end

