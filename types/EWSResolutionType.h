#import <Foundation/Foundation.h>




#import "EWSContactItemType.h"
#import "EWSEmailAddressType.h"



/* ResolutionType */
@interface EWSResolutionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddressType* mailbox;
@property (retain) EWSContactItemType*  contact;


@end

