#import <Foundation/Foundation.h>






/* ArrayOfSearchItemKindsType */
@interface MPSEWSArrayOfSearchItemKindsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSearchItemKindsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* searchItemKind /* MPSEWSSearchItemKindType */;


- (void) addSearchItemKind:(NSString*) elem;
@end

