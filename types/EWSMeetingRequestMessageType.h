#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSCalendarItemTypeType.h"
#import "../types/EWSLegacyFreeBusyType.h"
#import "../types/EWSMeetingRequestTypeType.h"
#import "../types/EWSNonEmptyArrayOfAllItemsType.h"
#import "../types/EWSNonEmptyArrayOfAttendeesType.h"
#import "../types/EWSNonEmptyArrayOfDeletedOccurrencesType.h"
#import "../types/EWSNonEmptyArrayOfOccurrenceInfoType.h"
#import "../types/EWSOccurrenceInfoType.h"
#import "../types/EWSRecurrenceType.h"
#import "../types/EWSResponseTypeType.h"
#import "../types/EWSSingleRecipientType.h"
#import "../types/EWSTimeZoneType.h"
#import "EWSMeetingMessageType.h"



/* MeetingRequestMessageType */
@interface EWSMeetingRequestMessageType : EWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                               meetingRequestType         /* EWSMeetingRequestTypeType */;
@property (retain) NSString*                               intendedFreeBusyStatus     /* EWSLegacyFreeBusyType */;
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

