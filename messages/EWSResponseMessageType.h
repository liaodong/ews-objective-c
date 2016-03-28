#import <Foundation/Foundation.h>






/* ResponseMessageType */
@interface EWSResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* responseClass       /* EWSResponseClassType */;
@property (strong) NSString* messageText         /* xs:string */;
@property (strong) NSString* responseCode        /* EWSResponseCodeType */;
@property (strong) NSNumber* descriptiveLinkKey  /* xs:int */;
@property (strong) NSString* messageXml          /* xs:string */;


@end

