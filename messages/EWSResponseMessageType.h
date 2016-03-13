#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../messages/EWSResponseCodeType.h"
#import "../types/EWSResponseClassType.h"



/* ResponseMessageType */
@interface EWSResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* responseClass       /* EWSResponseClassType */;
@property (retain) NSString* messageText         /* xs:string */;
@property (retain) NSString* responseCode        /* EWSResponseCodeType */;
@property (retain) NSNumber* descriptiveLinkKey  /* xs:int */;
@property (retain) NSString* messageXml          /* xs:string */;


@end

