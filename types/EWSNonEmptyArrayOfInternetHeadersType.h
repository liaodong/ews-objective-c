#import <Foundation/Foundation.h>



@class EWSInternetHeaderType;



/* NonEmptyArrayOfInternetHeadersType */
@interface EWSNonEmptyArrayOfInternetHeadersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSInternetHeaderType*>* internetMessageHeader;


- (void) addInternetMessageHeader:(EWSInternetHeaderType*) elem;
@end

