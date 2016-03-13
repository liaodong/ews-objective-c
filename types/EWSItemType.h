#import <Foundation/Foundation.h>




#import "../handlers/EWSLanguageTypeHandler.h"
#import "EWSExtendedPropertyType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSReminderMinutesBeforeStartType.h"
#import "EWSFolderIdType.h"
#import "EWSNonEmptyArrayOfInternetHeadersType.h"
#import "EWSArrayOfStringsType.h"
#import "EWSBodyType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "EWSNonEmptyArrayOfAttachmentsType.h"
#import "EWSItemClassType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSNonEmptyArrayOfResponseObjectsType.h"
#import "EWSEffectiveRightsType.h"
#import "EWSMimeContentType.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSItemIdType.h"
#import "EWSImportanceChoicesType.h"
#import "EWSSensitivityChoicesType.h"



/* ItemType */
@interface EWSItemType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSMimeContentType*                       mimeContent;
@property (retain) EWSItemIdType*                            itemId;
@property (retain) EWSFolderIdType*                          parentFolderId;
@property (retain) NSString*                                 itemClass                   /* EWSItemClassType */;
@property (retain) NSString*                                 subject                     /* xs:string */;
@property (retain) NSString*                                 sensitivity                 /* EWSSensitivityChoicesType */;
@property (retain) EWSBodyType*                              body;
@property (retain) EWSNonEmptyArrayOfAttachmentsType*        attachments;
@property (retain) NSString*                                 dateTimeReceived            /* xs:dateTime */;
@property (retain) NSNumber*                                 size                        /* xs:int */;
@property (retain) NSArray<NSString*>*                       categories                  /* EWSArrayOfStringsType */;
@property (retain) NSString*                                 importance                  /* EWSImportanceChoicesType */;
@property (retain) NSString*                                 inReplyTo                   /* xs:string */;
@property (retain) NSNumber*                                 isSubmitted                 /* xs:boolean */;
@property (retain) NSNumber*                                 isDraft                     /* xs:boolean */;
@property (retain) NSNumber*                                 isFromMe                    /* xs:boolean */;
@property (retain) NSNumber*                                 isResend                    /* xs:boolean */;
@property (retain) NSNumber*                                 isUnmodified                /* xs:boolean */;
@property (retain) NSArray<EWSInternetHeaderType*>*          internetMessageHeaders      /* EWSNonEmptyArrayOfInternetHeadersType */;
@property (retain) NSString*                                 dateTimeSent                /* xs:dateTime */;
@property (retain) NSString*                                 dateTimeCreated             /* xs:dateTime */;
@property (retain) EWSNonEmptyArrayOfResponseObjectsType*    responseObjects;
@property (retain) NSString*                                 reminderDueBy               /* xs:dateTime */;
@property (retain) NSNumber*                                 reminderIsSet               /* xs:boolean */;
@property (retain) NSNumber*                                 reminderMinutesBeforeStart  /* EWSReminderMinutesBeforeStartType */;
@property (retain) NSString*                                 displayCc                   /* xs:string */;
@property (retain) NSString*                                 displayTo                   /* xs:string */;
@property (retain) NSNumber*                                 hasAttachments              /* xs:boolean */;
@property (retain) NSMutableArray<EWSExtendedPropertyType*>* extendedProperty;
@property (retain) NSString*                                 culture                     /* xs:language */;
@property (retain) EWSEffectiveRightsType*                   effectiveRights;
@property (retain) NSString*                                 lastModifiedName            /* xs:string */;
@property (retain) NSString*                                 lastModifiedTime            /* xs:dateTime */;


- (void) addExtendedProperty:(EWSExtendedPropertyType*) elem;
@end

