#import <Foundation/Foundation.h>






/* ArrayOfUnknownEntriesType */
@interface MPSEWSArrayOfUnknownEntriesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUnknownEntriesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* unknownEntry /* xs:string */;


- (void) addUnknownEntry:(NSString*) elem;
@end

