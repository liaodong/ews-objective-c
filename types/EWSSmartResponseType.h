#import <Foundation/Foundation.h>




#import "EWSBodyType.h"
#import "EWSSmartResponseBaseType.h"



/* SmartResponseType */
@interface EWSSmartResponseType : EWSSmartResponseBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBodyType* pNewBodyContent;


@end

