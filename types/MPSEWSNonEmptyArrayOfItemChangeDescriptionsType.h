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

@property (strong) MPSEWSAppendToItemFieldType* appendToItemField;
@property (strong) MPSEWSSetItemFieldType*      setItemField;
@property (strong) MPSEWSDeleteItemFieldType*   deleteItemField;


@end

