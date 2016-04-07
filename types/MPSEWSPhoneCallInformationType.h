#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* PhoneCallInformationType */
@interface MPSEWSPhoneCallInformationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneCallInformationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* phoneCallState          /* MPSEWSPhoneCallStateType */;
@property (strong) NSString* connectionFailureCause  /* MPSEWSConnectionFailureCauseType */;
@property (strong) NSString* sIPResponseText         /* xs:string */;
@property (strong) NSNumber* sIPResponseCode         /* xs:int */;


@end

