#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSArrayOfStringsType;
@class MPSEWSTaskRecurrenceType;



/* TaskType */
@interface MPSEWSTaskType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTaskType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                 actualWork            /* xs:int */;
@property (strong) NSString*                 assignedTime          /* xs:dateTime */;
@property (strong) NSString*                 billingInformation    /* xs:string */;
@property (strong) NSNumber*                 changeCount           /* xs:int */;
@property (strong) MPSEWSArrayOfStringsType* companies;
@property (strong) NSString*                 completeDate          /* xs:dateTime */;
@property (strong) MPSEWSArrayOfStringsType* contacts;
@property (strong) NSString*                 delegationState       /* MPSEWSTaskDelegateStateType */;
@property (strong) NSString*                 delegator             /* xs:string */;
@property (strong) NSString*                 dueDate               /* xs:dateTime */;
@property (strong) NSNumber*                 isAssignmentEditable  /* xs:int */;
@property (strong) NSNumber*                 isComplete            /* xs:boolean */;
@property (strong) NSNumber*                 isRecurring           /* xs:boolean */;
@property (strong) NSNumber*                 isTeamTask            /* xs:boolean */;
@property (strong) NSString*                 mileage               /* xs:string */;
@property (strong) NSString*                 owner                 /* xs:string */;
@property (strong) NSNumber*                 percentComplete       /* xs:double */;
@property (strong) MPSEWSTaskRecurrenceType* recurrence;
@property (strong) NSString*                 startDate             /* xs:dateTime */;
@property (strong) NSString*                 status                /* MPSEWSTaskStatusType */;
@property (strong) NSString*                 statusDescription     /* xs:string */;
@property (strong) NSNumber*                 totalWork             /* xs:int */;


@end

