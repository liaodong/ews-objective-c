#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRuleActionsType;
@class MPSEWSRulePredicatesType;



/* RuleType */
@interface MPSEWSRuleType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                 ruleId          /* xs:string */;
@property (strong) NSString*                 displayName     /* xs:string */;
@property (strong) NSNumber*                 priority        /* xs:int */;
@property (strong) NSNumber*                 isEnabled       /* xs:boolean */;
@property (strong) NSNumber*                 isNotSupported  /* xs:boolean */;
@property (strong) NSNumber*                 isInError       /* xs:boolean */;
@property (strong) MPSEWSRulePredicatesType* conditions;
@property (strong) MPSEWSRulePredicatesType* exceptions;
@property (strong) MPSEWSRuleActionsType*    actions;


@end

