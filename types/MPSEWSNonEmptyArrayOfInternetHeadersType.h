#import <Foundation/Foundation.h>



@class MPSEWSInternetHeaderType;



/* NonEmptyArrayOfInternetHeadersType */
@interface MPSEWSNonEmptyArrayOfInternetHeadersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSInternetHeaderType*>* internetMessageHeader;


- (void) addInternetMessageHeader:(MPSEWSInternetHeaderType*) elem;
@end

