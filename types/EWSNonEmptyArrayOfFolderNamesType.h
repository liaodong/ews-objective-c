#import <Foundation/Foundation.h>






/* NonEmptyArrayOfFolderNamesType */
@interface EWSNonEmptyArrayOfFolderNamesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* folderName /* xs:string */;


- (void) addFolderName:(NSString*) elem;
@end

