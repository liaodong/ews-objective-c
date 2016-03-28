#import <Foundation/Foundation.h>






/* ArrayOfStringsType */
@interface EWSArrayOfStringsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* string /* xs:string */;


- (void) addString:(NSString*) elem;
@end

