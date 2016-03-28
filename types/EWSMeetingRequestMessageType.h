#import <Foundation/Foundation.h>
#import "EWSMeetingMessageType.h"



@class EWSNonEmptyArrayOfAllItemsType;
@class EWSNonEmptyArrayOfAttendeesType;
@class EWSNonEmptyArrayOfDeletedOccurrencesType;
@class EWSNonEmptyArrayOfOccurrenceInfoType;
@class EWSOccurrenceInfoType;
@class EWSRecurrenceType;
@class EWSSingleRecipientType;
@class EWSTimeZoneType;



/* MeetingRequestMessageType */
@interface EWSMeetingRequestMessageType : EWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                 meetingRequestType         /* EWSMeetingRequestTypeType */;
@property (strong) NSString*                                 intendedFreeBusyStatus     /* EWSLegacyFreeBusyType */;
@property (strong) NSString*                                 start                      /* xs:dateTime */;
@property (strong) NSString*                                 end                        /* xs:dateTime */;
@property (strong) NSString*                                 originalStart              /* xs:dateTime */;
@property (strong) NSNumber*                                 isAllDayEvent              /* xs:boolean */;
@property (strong) NSString*                                 legacyFreeBusyStatus       /* EWSLegacyFreeBusyType */;
@property (strong) NSString*                                 location                   /* xs:string */;
@property (strong) NSString*                                 when                       /* xs:string */;
@property (strong) NSNumber*                                 isMeeting                  /* xs:boolean */;
@property (strong) NSNumber*                                 isCancelled                /* xs:boolean */;
@property (strong) NSNumber*                                 isRecurring                /* xs:boolean */;
@property (strong) NSNumber*                                 meetingRequestWasSent      /* xs:boolean */;
@property (strong) NSString*                                 calendarItemType           /* EWSCalendarItemTypeType */;
@property (strong) NSString*                                 myResponseType             /* EWSResponseTypeType */;
@property (strong) EWSSingleRecipientType*                   organizer;
@property (strong) EWSNonEmptyArrayOfAttendeesType*          requiredAttendees;
@property (strong) EWSNonEmptyArrayOfAttendeesType*          optionalAttendees;
@property (strong) EWSNonEmptyArrayOfAttendeesType*          resources;
@property (strong) NSNumber*                                 conflictingMeetingCount    /* xs:int */;
@property (strong) NSNumber*                                 adjacentMeetingCount       /* xs:int */;
@property (strong) EWSNonEmptyArrayOfAllItemsType*           conflictingMeetings;
@property (strong) EWSNonEmptyArrayOfAllItemsType*           adjacentMeetings;
@property (strong) NSString*                                 duration                   /* xs:string */;
@property (strong) NSString*                                 timeZone                   /* xs:string */;
@property (strong) NSString*                                 appointmentReplyTime       /* xs:dateTime */;
@property (strong) NSNumber*                                 appointmentSequenceNumber  /* xs:int */;
@property (strong) NSNumber*                                 appointmentState           /* xs:int */;
@property (strong) EWSRecurrenceType*                        recurrence;
@property (strong) EWSOccurrenceInfoType*                    firstOccurrence;
@property (strong) EWSOccurrenceInfoType*                    lastOccurrence;
@property (strong) EWSNonEmptyArrayOfOccurrenceInfoType*     modifiedOccurrences;
@property (strong) EWSNonEmptyArrayOfDeletedOccurrencesType* deletedOccurrences;
@property (strong) EWSTimeZoneType*                          meetingTimeZone;
@property (strong) NSNumber*                                 conferenceType             /* xs:int */;
@property (strong) NSNumber*                                 allowNewTimeProposal       /* xs:boolean */;
@property (strong) NSNumber*                                 isOnlineMeeting            /* xs:boolean */;
@property (strong) NSString*                                 meetingWorkspaceUrl        /* xs:string */;
@property (strong) NSString*                                 netShowUrl                 /* xs:string */;


@end

