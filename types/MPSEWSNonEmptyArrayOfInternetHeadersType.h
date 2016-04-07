#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSInternetHeaderType;



/* NonEmptyArrayOfInternetHeadersType */
@interface MPSEWSNonEmptyArrayOfInternetHeadersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfInternetHeadersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSInternetHeaderType*>* internetMessageHeader;


- (void) addInternetMessageHeader:(MPSEWSInternetHeaderType*) elem;
@end

