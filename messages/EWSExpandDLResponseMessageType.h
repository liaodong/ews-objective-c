#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSArrayOfDLExpansionType.h"
#import "EWSResponseMessageType.h"



/* ExpandDLResponseMessageType */
@interface EWSExpandDLResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*                  indexedPagingOffset      /* xs:int */;
@property (retain) NSNumber*                  numeratorOffset          /* xs:int */;
@property (retain) NSNumber*                  absoluteDenominator      /* xs:int */;
@property (retain) NSNumber*                  includesLastItemInRange  /* xs:boolean */;
@property (retain) NSNumber*                  totalItemsInView         /* xs:int */;
@property (retain) EWSArrayOfDLExpansionType* dLExpansion;


@end

