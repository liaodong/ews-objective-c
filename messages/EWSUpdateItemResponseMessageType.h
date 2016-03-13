#import <Foundation/Foundation.h>




#import "../types/EWSConflictResultsType.h"
#import "EWSItemInfoResponseMessageType.h"



/* UpdateItemResponseMessageType */
@interface EWSUpdateItemResponseMessageType : EWSItemInfoResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSConflictResultsType* conflictResults;


@end

