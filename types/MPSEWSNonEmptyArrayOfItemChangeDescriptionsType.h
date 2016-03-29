#import <Foundation/Foundation.h>



@class MPSEWSAppendToItemFieldType;
@class MPSEWSDeleteItemFieldType;
@class MPSEWSSetItemFieldType;



/* NonEmptyArrayOfItemChangeDescriptionsType */
@interface MPSEWSNonEmptyArrayOfItemChangeDescriptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAppendToItemFieldType*>* appendToItemField;
@property (strong) NSMutableArray<MPSEWSSetItemFieldType*>*      setItemField;
@property (strong) NSMutableArray<MPSEWSDeleteItemFieldType*>*   deleteItemField;


- (void) addAppendToItemField:(MPSEWSAppendToItemFieldType*) elem;
- (void) addSetItemField:(MPSEWSSetItemFieldType*) elem;
- (void) addDeleteItemField:(MPSEWSDeleteItemFieldType*) elem;
@end

