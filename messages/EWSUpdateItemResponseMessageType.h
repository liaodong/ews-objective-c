#import <Foundation/Foundation.h>
#import "EWSItemInfoResponseMessageType.h"



@class EWSConflictResultsType;



/* UpdateItemResponseMessageType */
@interface EWSUpdateItemResponseMessageType : EWSItemInfoResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSConflictResultsType* conflictResults;


@end

