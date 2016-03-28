#import <Foundation/Foundation.h>



@class EWSAppendToFolderFieldType;
@class EWSDeleteFolderFieldType;
@class EWSSetFolderFieldType;



/* NonEmptyArrayOfFolderChangeDescriptionsType */
@interface EWSNonEmptyArrayOfFolderChangeDescriptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAppendToFolderFieldType* appendToFolderField;
@property (strong) EWSSetFolderFieldType*      setFolderField;
@property (strong) EWSDeleteFolderFieldType*   deleteFolderField;


@end

