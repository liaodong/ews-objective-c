#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ResponseMessageType */
@interface MPSEWSResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* responseClass       /* MPSEWSResponseClassType */;
@property (strong) NSString* messageText         /* xs:string */;
@property (strong) NSString* responseCode        /* MPSEWSResponseCodeType */;
@property (strong) NSNumber* descriptiveLinkKey  /* xs:int */;
@property (strong) NSData*   messageXml          /* xs:xmlContent */;


@end

