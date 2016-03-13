#import <Foundation/Foundation.h>




#import "EWSCalendarItemTypeType.h"
#import "EWSResponseTypeType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSNonEmptyArrayOfAttendeesType.h"
#import "EWSNonEmptyArrayOfOccurrenceInfoType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "EWSLegacyFreeBusyType.h"
#import "EWSNonEmptyArrayOfAllItemsType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSNonEmptyArrayOfDeletedOccurrencesType.h"
#import "EWSTimeZoneType.h"
#import "EWSOccurrenceInfoType.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSSingleRecipientType.h"
#import "EWSRecurrenceType.h"
#import "EWSItemType.h"



/* CalendarItemType */
@interface EWSCalendarItemType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                               uID                        /* xs:string */;
@property (retain) NSString*                               recurrenceId               /* xs:dateTime */;
@property (retain) NSString*                               dateTimeStamp              /* xs:dateTime */;
@property (retain) NSString*                               start                      /* xs:dateTime */;
@property (retain) NSString*                               end                        /* xs:dateTime */;
@property (retain) NSString*                               originalStart              /* xs:dateTime */;
@property (retain) NSNumber*                               isAllDayEvent              /* xs:boolean */;
@property (retain) NSString*                               legacyFreeBusyStatus       /* EWSLegacyFreeBusyType */;
@property (retain) NSString*                               location                   /* xs:string */;
@property (retain) NSString*                               when                       /* xs:string */;
@property (retain) NSNumber*                               isMeeting                  /* xs:boolean */;
@property (retain) NSNumber*                               isCancelled                /* xs:boolean */;
@property (retain) NSNumber*                               isRecurring                /* xs:boolean */;
@property (retain) NSNumber*                               meetingRequestWasSent      /* xs:boolean */;
@property (retain) NSNumber*                               isResponseRequested        /* xs:boolean */;
@property (retain) NSString*                               calendarItemType           /* EWSCalendarItemTypeType */;
@property (retain) NSString*                               myResponseType             /* EWSResponseTypeType */;
@property (retain) EWSSingleRecipientType*                 organizer;
@property (retain) NSArray<EWSAttendeeType*>*              requiredAttendees          /* EWSNonEmptyArrayOfAttendeesType */;
@property (retain) NSArray<EWSAttendeeType*>*              optionalAttendees          /* EWSNonEmptyArrayOfAttendeesType */;
@property (retain) NSArray<EWSAttendeeType*>*              resources                  /* EWSNonEmptyArrayOfAttendeesType */;
@property (retain) NSNumber*                               conflictingMeetingCount    /* xs:int */;
@property (retain) NSNumber*                               adjacentMeetingCount       /* xs:int */;
@property (retain) EWSNonEmptyArrayOfAllItemsType*         conflictingMeetings;
@property (retain) EWSNonEmptyArrayOfAllItemsType*         adjacentMeetings;
@property (retain) NSString*                               duration                   /* xs:string */;
@property (retain) NSString*                               timeZone                   /* xs:string */;
@property (retain) NSString*                               appointmentReplyTime       /* xs:dateTime */;
@property (retain) NSNumber*                               appointmentSequenceNumber  /* xs:int */;
@property (retain) NSNumber*                               appointmentState           /* xs:int */;
@property (retain) EWSRecurrenceType*                      recurrence;
@property (retain) EWSOccurrenceInfoType*                  firstOccurrence;
@property (retain) EWSOccurrenceInfoType*                  lastOccurrence;
@property (retain) NSArray<EWSOccurrenceInfoType*>*        modifiedOccurrences        /* EWSNonEmptyArrayOfOccurrenceInfoType */;
@property (retain) NSArray<EWSDeletedOccurrenceInfoType*>* deletedOccurrences         /* EWSNonEmptyArrayOfDeletedOccurrencesType */;
@property (retain) EWSTimeZoneType*                        meetingTimeZone;
@property (retain) NSNumber*                               conferenceType             /* xs:int */;
@property (retain) NSNumber*                               allowNewTimeProposal       /* xs:boolean */;
@property (retain) NSNumber*                               isOnlineMeeting            /* xs:boolean */;
@property (retain) NSString*                               meetingWorkspaceUrl        /* xs:string */;
@property (retain) NSString*                               netShowUrl                 /* xs:string */;


@end

