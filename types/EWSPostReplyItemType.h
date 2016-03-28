#import <Foundation/Foundation.h>
#import "EWSPostReplyItemBaseType.h"



@class EWSBodyType;



/* PostReplyItemType */
@interface EWSPostReplyItemType : EWSPostReplyItemBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBodyType* pNewBodyContent;


@end

