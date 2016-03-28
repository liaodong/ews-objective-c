#import <Foundation/Foundation.h>



@class EWSEmailAddressDictionaryEntryType;



/* EmailAddressDictionaryType */
@interface EWSEmailAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSEmailAddressDictionaryEntryType*>* entry;


- (void) addEntry:(EWSEmailAddressDictionaryEntryType*) elem;
@end

