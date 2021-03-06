#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAppendToFolderFieldType;
@class MPSEWSDeleteFolderFieldType;
@class MPSEWSSetFolderFieldType;



/* NonEmptyArrayOfFolderChangeDescriptionsType */
@interface MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAppendToFolderFieldType*>* appendToFolderField;
@property (strong) NSMutableArray<MPSEWSSetFolderFieldType*>*      setFolderField;
@property (strong) NSMutableArray<MPSEWSDeleteFolderFieldType*>*   deleteFolderField;


- (void) addAppendToFolderField:(MPSEWSAppendToFolderFieldType*) elem;
- (void) addSetFolderField:(MPSEWSSetFolderFieldType*) elem;
- (void) addDeleteFolderField:(MPSEWSDeleteFolderFieldType*) elem;
@end

