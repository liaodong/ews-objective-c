#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUploadItemType;



/* NonEmptyArrayOfUploadItemsType */
@interface MPSEWSNonEmptyArrayOfUploadItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfUploadItemsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUploadItemType*>* item;


- (void) addItem:(MPSEWSUploadItemType*) elem;
@end

