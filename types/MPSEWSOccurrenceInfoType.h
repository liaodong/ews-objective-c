#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;



/* OccurrenceInfoType */
@interface MPSEWSOccurrenceInfoType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOccurrenceInfoType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;
@property (strong) NSString*         start          /* xs:dateTime */;
@property (strong) NSString*         end            /* xs:dateTime */;
@property (strong) NSString*         originalStart  /* xs:dateTime */;


@end

