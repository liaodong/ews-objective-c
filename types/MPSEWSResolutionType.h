#import <Foundation/Foundation.h>



@class MPSEWSContactItemType;
@class MPSEWSEmailAddressType;



/* ResolutionType */
@interface MPSEWSResolutionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) MPSEWSContactItemType*  contact;


@end

