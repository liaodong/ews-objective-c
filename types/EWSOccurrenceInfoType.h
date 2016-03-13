#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSItemIdType.h"



/* OccurrenceInfoType */
@interface EWSOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType* itemId;
@property (retain) NSString*      start          /* xs:dateTime */;
@property (retain) NSString*      end            /* xs:dateTime */;
@property (retain) NSString*      originalStart  /* xs:dateTime */;


@end

