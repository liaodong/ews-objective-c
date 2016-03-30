#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressDictionaryEntryType;



/* EmailAddressDictionaryType */
@interface MPSEWSEmailAddressDictionaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEmailAddressDictionaryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSEmailAddressDictionaryEntryType*) elem;
@end

