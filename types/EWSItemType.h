#import <Foundation/Foundation.h>



@class EWSArrayOfStringsType;
@class EWSBodyType;
@class EWSEffectiveRightsType;
@class EWSExtendedPropertyType;
@class EWSFolderIdType;
@class EWSItemIdType;
@class EWSMimeContentType;
@class EWSNonEmptyArrayOfAttachmentsType;
@class EWSNonEmptyArrayOfInternetHeadersType;
@class EWSNonEmptyArrayOfResponseObjectsType;



/* ItemType */
@interface EWSItemType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSMimeContentType*                       mimeContent;
@property (strong) EWSItemIdType*                            itemId;
@property (strong) EWSFolderIdType*                          parentFolderId;
@property (strong) NSString*                                 itemClass                   /* EWSItemClassType */;
@property (strong) NSString*                                 subject                     /* xs:string */;
@property (strong) NSString*                                 sensitivity                 /* EWSSensitivityChoicesType */;
@property (strong) EWSBodyType*                              body;
@property (strong) EWSNonEmptyArrayOfAttachmentsType*        attachments;
@property (strong) NSString*                                 dateTimeReceived            /* xs:dateTime */;
@property (strong) NSNumber*                                 size                        /* xs:int */;
@property (strong) EWSArrayOfStringsType*                    categories;
@property (strong) NSString*                                 importance                  /* EWSImportanceChoicesType */;
@property (strong) NSString*                                 inReplyTo                   /* xs:string */;
@property (strong) NSNumber*                                 isSubmitted                 /* xs:boolean */;
@property (strong) NSNumber*                                 isDraft                     /* xs:boolean */;
@property (strong) NSNumber*                                 isFromMe                    /* xs:boolean */;
@property (strong) NSNumber*                                 isResend                    /* xs:boolean */;
@property (strong) NSNumber*                                 isUnmodified                /* xs:boolean */;
@property (strong) EWSNonEmptyArrayOfInternetHeadersType*    internetMessageHeaders;
@property (strong) NSString*                                 dateTimeSent                /* xs:dateTime */;
@property (strong) NSString*                                 dateTimeCreated             /* xs:dateTime */;
@property (strong) EWSNonEmptyArrayOfResponseObjectsType*    responseObjects;
@property (strong) NSString*                                 reminderDueBy               /* xs:dateTime */;
@property (strong) NSNumber*                                 reminderIsSet               /* xs:boolean */;
@property (strong) NSNumber*                                 reminderMinutesBeforeStart  /* EWSReminderMinutesBeforeStartType */;
@property (strong) NSString*                                 displayCc                   /* xs:string */;
@property (strong) NSString*                                 displayTo                   /* xs:string */;
@property (strong) NSNumber*                                 hasAttachments              /* xs:boolean */;
@property (strong) NSMutableArray<EWSExtendedPropertyType*>* extendedProperty;
@property (strong) NSString*                                 culture                     /* xs:language */;
@property (strong) EWSEffectiveRightsType*                   effectiveRights;
@property (strong) NSString*                                 lastModifiedName            /* xs:string */;
@property (strong) NSString*                                 lastModifiedTime            /* xs:dateTime */;


- (void) addExtendedProperty:(EWSExtendedPropertyType*) elem;
@end

