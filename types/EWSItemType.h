#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSLanguageTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfStringsType.h"
#import "../types/EWSBodyType.h"
#import "../types/EWSEffectiveRightsType.h"
#import "../types/EWSExtendedPropertyType.h"
#import "../types/EWSFolderIdType.h"
#import "../types/EWSImportanceChoicesType.h"
#import "../types/EWSItemClassType.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSMimeContentType.h"
#import "../types/EWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/EWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/EWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/EWSReminderMinutesBeforeStartType.h"
#import "../types/EWSSensitivityChoicesType.h"



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

