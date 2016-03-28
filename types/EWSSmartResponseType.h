#import <Foundation/Foundation.h>
#import "EWSSmartResponseBaseType.h"



@class EWSBodyType;



/* SmartResponseType */
@interface EWSSmartResponseType : EWSSmartResponseBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBodyType* pNewBodyContent;


@end

