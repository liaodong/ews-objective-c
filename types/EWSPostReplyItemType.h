#import <Foundation/Foundation.h>




#import "EWSBodyType.h"
#import "EWSPostReplyItemBaseType.h"



/* PostReplyItemType */
@interface EWSPostReplyItemType : EWSPostReplyItemBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBodyType* pNewBodyContent;


@end

