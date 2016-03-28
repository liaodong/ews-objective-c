#import <Foundation/Foundation.h>
#import "EWSItemType.h"



@class EWSArrayOfStringsType;
@class EWSTaskRecurrenceType;



/* TaskType */
@interface EWSTaskType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*              actualWork            /* xs:int */;
@property (strong) NSString*              assignedTime          /* xs:dateTime */;
@property (strong) NSString*              billingInformation    /* xs:string */;
@property (strong) NSNumber*              changeCount           /* xs:int */;
@property (strong) EWSArrayOfStringsType* companies;
@property (strong) NSString*              completeDate          /* xs:dateTime */;
@property (strong) EWSArrayOfStringsType* contacts;
@property (strong) NSString*              delegationState       /* EWSTaskDelegateStateType */;
@property (strong) NSString*              delegator             /* xs:string */;
@property (strong) NSString*              dueDate               /* xs:dateTime */;
@property (strong) NSNumber*              isAssignmentEditable  /* xs:int */;
@property (strong) NSNumber*              isComplete            /* xs:boolean */;
@property (strong) NSNumber*              isRecurring           /* xs:boolean */;
@property (strong) NSNumber*              isTeamTask            /* xs:boolean */;
@property (strong) NSString*              mileage               /* xs:string */;
@property (strong) NSString*              owner                 /* xs:string */;
@property (strong) NSNumber*              percentComplete       /* xs:double */;
@property (strong) EWSTaskRecurrenceType* recurrence;
@property (strong) NSString*              startDate             /* xs:dateTime */;
@property (strong) NSString*              status                /* EWSTaskStatusType */;
@property (strong) NSString*              statusDescription     /* xs:string */;
@property (strong) NSNumber*              totalWork             /* xs:int */;


@end

