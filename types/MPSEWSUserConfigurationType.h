#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;
@class MPSEWSUserConfigurationDictionaryType;
@class MPSEWSUserConfigurationNameType;



/* UserConfigurationType */
@interface MPSEWSUserConfigurationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationNameType*       userConfigurationName;
@property (strong) MPSEWSItemIdType*                      itemId;
@property (strong) MPSEWSUserConfigurationDictionaryType* dictionary;
@property (strong) NSData*                                xmlData                /* xs:base64Binary */;
@property (strong) NSData*                                binaryData             /* xs:base64Binary */;


@end

