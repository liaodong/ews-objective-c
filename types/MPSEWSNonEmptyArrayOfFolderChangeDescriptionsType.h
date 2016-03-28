#import <Foundation/Foundation.h>



@class MPSEWSAppendToFolderFieldType;
@class MPSEWSDeleteFolderFieldType;
@class MPSEWSSetFolderFieldType;



/* NonEmptyArrayOfFolderChangeDescriptionsType */
@interface MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAppendToFolderFieldType* appendToFolderField;
@property (strong) MPSEWSSetFolderFieldType*      setFolderField;
@property (strong) MPSEWSDeleteFolderFieldType*   deleteFolderField;


@end

