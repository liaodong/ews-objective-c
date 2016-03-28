#import <Foundation/Foundation.h>



@class EWSAppendToItemFieldType;
@class EWSDeleteItemFieldType;
@class EWSSetItemFieldType;



/* NonEmptyArrayOfItemChangeDescriptionsType */
@interface EWSNonEmptyArrayOfItemChangeDescriptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAppendToItemFieldType* appendToItemField;
@property (strong) EWSSetItemFieldType*      setItemField;
@property (strong) EWSDeleteItemFieldType*   deleteItemField;


@end

