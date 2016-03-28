#import <Foundation/Foundation.h>



@class EWSItemIdType;



/* OccurrenceInfoType */
@interface EWSOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* itemId;
@property (strong) NSString*      start          /* xs:dateTime */;
@property (strong) NSString*      end            /* xs:dateTime */;
@property (strong) NSString*      originalStart  /* xs:dateTime */;


@end

