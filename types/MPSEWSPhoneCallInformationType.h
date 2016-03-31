#import <Foundation/Foundation.h>






/* PhoneCallInformationType */
@interface MPSEWSPhoneCallInformationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPhoneCallInformationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* phoneCallState          /* MPSEWSPhoneCallStateType */;
@property (strong) NSString* connectionFailureCause  /* MPSEWSConnectionFailureCauseType */;
@property (strong) NSString* sIPResponseText         /* xs:string */;
@property (strong) NSNumber* sIPResponseCode         /* xs:int */;


@end

