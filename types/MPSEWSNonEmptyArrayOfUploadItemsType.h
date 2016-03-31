#import <Foundation/Foundation.h>



@class MPSEWSUploadItemType;



/* NonEmptyArrayOfUploadItemsType */
@interface MPSEWSNonEmptyArrayOfUploadItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfUploadItemsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUploadItemType*>* item;


- (void) addItem:(MPSEWSUploadItemType*) elem;
@end

