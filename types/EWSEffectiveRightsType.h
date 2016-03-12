#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"



/* EffectiveRightsType */
@interface EWSEffectiveRightsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* createAssociated  /* xs:boolean */;
@property (retain) NSNumber* createContents    /* xs:boolean */;
@property (retain) NSNumber* createHierarchy   /* xs:boolean */;
@property (retain) NSNumber* delete            /* xs:boolean */;
@property (retain) NSNumber* modify            /* xs:boolean */;
@property (retain) NSNumber* read              /* xs:boolean */;


@end

