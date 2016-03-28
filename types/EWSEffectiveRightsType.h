#import <Foundation/Foundation.h>






/* EffectiveRightsType */
@interface EWSEffectiveRightsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* createAssociated  /* xs:boolean */;
@property (strong) NSNumber* createContents    /* xs:boolean */;
@property (strong) NSNumber* createHierarchy   /* xs:boolean */;
@property (strong) NSNumber* delete            /* xs:boolean */;
@property (strong) NSNumber* modify            /* xs:boolean */;
@property (strong) NSNumber* read              /* xs:boolean */;


@end

