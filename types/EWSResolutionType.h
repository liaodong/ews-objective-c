#import <Foundation/Foundation.h>



@class EWSContactItemType;
@class EWSEmailAddressType;



/* ResolutionType */
@interface EWSResolutionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;
@property (strong) EWSContactItemType*  contact;


@end

