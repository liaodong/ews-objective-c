#import <Foundation/Foundation.h>

#import "MPSEWSResponseCodeType.h"
@implementation MPSEWSResponseCodeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSResponseCodeType NoError], 
                                         [MPSEWSResponseCodeType ErrorAccessDenied], 
                                         [MPSEWSResponseCodeType ErrorAccountDisabled], 
                                         [MPSEWSResponseCodeType ErrorAddDelegatesFailed], 
                                         [MPSEWSResponseCodeType ErrorAddressSpaceNotFound], 
                                         [MPSEWSResponseCodeType ErrorADOperation], 
                                         [MPSEWSResponseCodeType ErrorADSessionFilter], 
                                         [MPSEWSResponseCodeType ErrorADUnavailable], 
                                         [MPSEWSResponseCodeType ErrorAutoDiscoverFailed], 
                                         [MPSEWSResponseCodeType ErrorAffectedTaskOccurrencesRequired], 
                                         [MPSEWSResponseCodeType ErrorAttachmentSizeLimitExceeded], 
                                         [MPSEWSResponseCodeType ErrorAvailabilityConfigNotFound], 
                                         [MPSEWSResponseCodeType ErrorBatchProcessingStopped], 
                                         [MPSEWSResponseCodeType ErrorCalendarCannotMoveOrCopyOccurrence], 
                                         [MPSEWSResponseCodeType ErrorCalendarCannotUpdateDeletedItem], 
                                         [MPSEWSResponseCodeType ErrorCalendarCannotUseIdForOccurrenceId], 
                                         [MPSEWSResponseCodeType ErrorCalendarCannotUseIdForRecurringMasterId], 
                                         [MPSEWSResponseCodeType ErrorCalendarDurationIsTooLong], 
                                         [MPSEWSResponseCodeType ErrorCalendarEndDateIsEarlierThanStartDate], 
                                         [MPSEWSResponseCodeType ErrorCalendarFolderIsInvalidForCalendarView], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidAttributeValue], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidDayForTimeChangePattern], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidDayForWeeklyRecurrence], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidPropertyState], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidPropertyValue], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidRecurrence], 
                                         [MPSEWSResponseCodeType ErrorCalendarInvalidTimeZone], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsDelegatedForAccept], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsDelegatedForDecline], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsDelegatedForRemove], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsDelegatedForTentative], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsNotOrganizer], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsOrganizerForAccept], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsOrganizerForDecline], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsOrganizerForRemove], 
                                         [MPSEWSResponseCodeType ErrorCalendarIsOrganizerForTentative], 
                                         [MPSEWSResponseCodeType ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange], 
                                         [MPSEWSResponseCodeType ErrorCalendarOccurrenceIsDeletedFromRecurrence], 
                                         [MPSEWSResponseCodeType ErrorCalendarOutOfRange], 
                                         [MPSEWSResponseCodeType ErrorCalendarMeetingRequestIsOutOfDate], 
                                         [MPSEWSResponseCodeType ErrorCalendarViewRangeTooBig], 
                                         [MPSEWSResponseCodeType ErrorCannotCreateCalendarItemInNonCalendarFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotCreateContactInNonContactFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotCreatePostItemInNonMailFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotCreateTaskInNonTaskFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotDeleteObject], 
                                         [MPSEWSResponseCodeType ErrorCannotOpenFileAttachment], 
                                         [MPSEWSResponseCodeType ErrorCannotDeleteTaskOccurrence], 
                                         [MPSEWSResponseCodeType ErrorCannotSetCalendarPermissionOnNonCalendarFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotSetNonCalendarPermissionOnCalendarFolder], 
                                         [MPSEWSResponseCodeType ErrorCannotSetPermissionUnknownEntries], 
                                         [MPSEWSResponseCodeType ErrorCannotUseFolderIdForItemId], 
                                         [MPSEWSResponseCodeType ErrorCannotUseItemIdForFolderId], 
                                         [MPSEWSResponseCodeType ErrorChangeKeyRequired], 
                                         [MPSEWSResponseCodeType ErrorChangeKeyRequiredForWriteOperations], 
                                         [MPSEWSResponseCodeType ErrorConnectionFailed], 
                                         [MPSEWSResponseCodeType ErrorContentConversionFailed], 
                                         [MPSEWSResponseCodeType ErrorCorruptData], 
                                         [MPSEWSResponseCodeType ErrorCreateItemAccessDenied], 
                                         [MPSEWSResponseCodeType ErrorCreateManagedFolderPartialCompletion], 
                                         [MPSEWSResponseCodeType ErrorCreateSubfolderAccessDenied], 
                                         [MPSEWSResponseCodeType ErrorCrossMailboxMoveCopy], 
                                         [MPSEWSResponseCodeType ErrorDataSizeLimitExceeded], 
                                         [MPSEWSResponseCodeType ErrorDataSourceOperation], 
                                         [MPSEWSResponseCodeType ErrorDelegateAlreadyExists], 
                                         [MPSEWSResponseCodeType ErrorDelegateCannotAddOwner], 
                                         [MPSEWSResponseCodeType ErrorDelegateMissingConfiguration], 
                                         [MPSEWSResponseCodeType ErrorDelegateNoUser], 
                                         [MPSEWSResponseCodeType ErrorDelegateValidationFailed], 
                                         [MPSEWSResponseCodeType ErrorDeleteDistinguishedFolder], 
                                         [MPSEWSResponseCodeType ErrorDeleteItemsFailed], 
                                         [MPSEWSResponseCodeType ErrorDistinguishedUserNotSupported], 
                                         [MPSEWSResponseCodeType ErrorDuplicateInputFolderNames], 
                                         [MPSEWSResponseCodeType ErrorDuplicateUserIdsSpecified], 
                                         [MPSEWSResponseCodeType ErrorEmailAddressMismatch], 
                                         [MPSEWSResponseCodeType ErrorEventNotFound], 
                                         [MPSEWSResponseCodeType ErrorExpiredSubscription], 
                                         [MPSEWSResponseCodeType ErrorFolderCorrupt], 
                                         [MPSEWSResponseCodeType ErrorFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorFolderPropertRequestFailed], 
                                         [MPSEWSResponseCodeType ErrorFolderSave], 
                                         [MPSEWSResponseCodeType ErrorFolderSaveFailed], 
                                         [MPSEWSResponseCodeType ErrorFolderSavePropertyError], 
                                         [MPSEWSResponseCodeType ErrorFolderExists], 
                                         [MPSEWSResponseCodeType ErrorFreeBusyGenerationFailed], 
                                         [MPSEWSResponseCodeType ErrorGetServerSecurityDescriptorFailed], 
                                         [MPSEWSResponseCodeType ErrorImpersonateUserDenied], 
                                         [MPSEWSResponseCodeType ErrorImpersonationDenied], 
                                         [MPSEWSResponseCodeType ErrorImpersonationFailed], 
                                         [MPSEWSResponseCodeType ErrorIncorrectSchemaVersion], 
                                         [MPSEWSResponseCodeType ErrorIncorrectUpdatePropertyCount], 
                                         [MPSEWSResponseCodeType ErrorIndividualMailboxLimitReached], 
                                         [MPSEWSResponseCodeType ErrorInsufficientResources], 
                                         [MPSEWSResponseCodeType ErrorInternalServerError], 
                                         [MPSEWSResponseCodeType ErrorInternalServerTransientError], 
                                         [MPSEWSResponseCodeType ErrorInvalidAccessLevel], 
                                         [MPSEWSResponseCodeType ErrorInvalidAttachmentId], 
                                         [MPSEWSResponseCodeType ErrorInvalidAttachmentSubfilter], 
                                         [MPSEWSResponseCodeType ErrorInvalidAttachmentSubfilterTextFilter], 
                                         [MPSEWSResponseCodeType ErrorInvalidAuthorizationContext], 
                                         [MPSEWSResponseCodeType ErrorInvalidChangeKey], 
                                         [MPSEWSResponseCodeType ErrorInvalidClientSecurityContext], 
                                         [MPSEWSResponseCodeType ErrorInvalidCompleteDate], 
                                         [MPSEWSResponseCodeType ErrorInvalidCrossForestCredentials], 
                                         [MPSEWSResponseCodeType ErrorInvalidDelegatePermission], 
                                         [MPSEWSResponseCodeType ErrorInvalidDelegateUserId], 
                                         [MPSEWSResponseCodeType ErrorInvalidExcludesRestriction], 
                                         [MPSEWSResponseCodeType ErrorInvalidExpressionTypeForSubFilter], 
                                         [MPSEWSResponseCodeType ErrorInvalidExtendedProperty], 
                                         [MPSEWSResponseCodeType ErrorInvalidExtendedPropertyValue], 
                                         [MPSEWSResponseCodeType ErrorInvalidFolderId], 
                                         [MPSEWSResponseCodeType ErrorInvalidFolderTypeForOperation], 
                                         [MPSEWSResponseCodeType ErrorInvalidFractionalPagingParameters], 
                                         [MPSEWSResponseCodeType ErrorInvalidFreeBusyViewType], 
                                         [MPSEWSResponseCodeType ErrorInvalidId], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdEmpty], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdMalformed], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdMalformedEwsLegacyIdFormat], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdMonikerTooLong], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdNotAnItemAttachmentId], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdReturnedByResolveNames], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdStoreObjectIdTooLong], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdTooManyAttachmentLevels], 
                                         [MPSEWSResponseCodeType ErrorInvalidIdXml], 
                                         [MPSEWSResponseCodeType ErrorInvalidIndexedPagingParameters], 
                                         [MPSEWSResponseCodeType ErrorInvalidInternetHeaderChildNodes], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationCreateItemAttachment], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationCreateItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationAcceptItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationDeclineItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationCancelItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationExpandDL], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationRemoveItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationSendItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidItemForOperationTentative], 
                                         [MPSEWSResponseCodeType ErrorInvalidManagedFolderProperty], 
                                         [MPSEWSResponseCodeType ErrorInvalidManagedFolderQuota], 
                                         [MPSEWSResponseCodeType ErrorInvalidManagedFolderSize], 
                                         [MPSEWSResponseCodeType ErrorInvalidMergedFreeBusyInterval], 
                                         [MPSEWSResponseCodeType ErrorInvalidNameForNameResolution], 
                                         [MPSEWSResponseCodeType ErrorInvalidOperation], 
                                         [MPSEWSResponseCodeType ErrorInvalidNetworkServiceContext], 
                                         [MPSEWSResponseCodeType ErrorInvalidOofParameter], 
                                         [MPSEWSResponseCodeType ErrorInvalidPagingMaxRows], 
                                         [MPSEWSResponseCodeType ErrorInvalidParentFolder], 
                                         [MPSEWSResponseCodeType ErrorInvalidPercentCompleteValue], 
                                         [MPSEWSResponseCodeType ErrorInvalidPermissionSettings], 
                                         [MPSEWSResponseCodeType ErrorInvalidUserInfo], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyAppend], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyDelete], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyForExists], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyForOperation], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyRequest], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertySet], 
                                         [MPSEWSResponseCodeType ErrorInvalidPropertyUpdateSentMessage], 
                                         [MPSEWSResponseCodeType ErrorInvalidProxySecurityContext], 
                                         [MPSEWSResponseCodeType ErrorInvalidPullSubscriptionId], 
                                         [MPSEWSResponseCodeType ErrorInvalidPushSubscriptionUrl], 
                                         [MPSEWSResponseCodeType ErrorInvalidRecipients], 
                                         [MPSEWSResponseCodeType ErrorInvalidRecipientSubfilter], 
                                         [MPSEWSResponseCodeType ErrorInvalidRecipientSubfilterComparison], 
                                         [MPSEWSResponseCodeType ErrorInvalidRecipientSubfilterOrder], 
                                         [MPSEWSResponseCodeType ErrorInvalidRecipientSubfilterTextFilter], 
                                         [MPSEWSResponseCodeType ErrorInvalidReferenceItem], 
                                         [MPSEWSResponseCodeType ErrorInvalidRequest], 
                                         [MPSEWSResponseCodeType ErrorInvalidRestriction], 
                                         [MPSEWSResponseCodeType ErrorInvalidRoutingType], 
                                         [MPSEWSResponseCodeType ErrorInvalidScheduledOofDuration], 
                                         [MPSEWSResponseCodeType ErrorInvalidSecurityDescriptor], 
                                         [MPSEWSResponseCodeType ErrorInvalidSendItemSaveSettings], 
                                         [MPSEWSResponseCodeType ErrorInvalidSerializedAccessToken], 
                                         [MPSEWSResponseCodeType ErrorInvalidServerVersion], 
                                         [MPSEWSResponseCodeType ErrorInvalidSid], 
                                         [MPSEWSResponseCodeType ErrorInvalidSmtpAddress], 
                                         [MPSEWSResponseCodeType ErrorInvalidSubfilterType], 
                                         [MPSEWSResponseCodeType ErrorInvalidSubfilterTypeNotAttendeeType], 
                                         [MPSEWSResponseCodeType ErrorInvalidSubfilterTypeNotRecipientType], 
                                         [MPSEWSResponseCodeType ErrorInvalidSubscription], 
                                         [MPSEWSResponseCodeType ErrorInvalidSubscriptionRequest], 
                                         [MPSEWSResponseCodeType ErrorInvalidSyncStateData], 
                                         [MPSEWSResponseCodeType ErrorInvalidTimeInterval], 
                                         [MPSEWSResponseCodeType ErrorInvalidUserOofSettings], 
                                         [MPSEWSResponseCodeType ErrorInvalidUserPrincipalName], 
                                         [MPSEWSResponseCodeType ErrorInvalidUserSid], 
                                         [MPSEWSResponseCodeType ErrorInvalidUserSidMissingUPN], 
                                         [MPSEWSResponseCodeType ErrorInvalidValueForProperty], 
                                         [MPSEWSResponseCodeType ErrorInvalidWatermark], 
                                         [MPSEWSResponseCodeType ErrorIrresolvableConflict], 
                                         [MPSEWSResponseCodeType ErrorItemCorrupt], 
                                         [MPSEWSResponseCodeType ErrorItemNotFound], 
                                         [MPSEWSResponseCodeType ErrorItemPropertyRequestFailed], 
                                         [MPSEWSResponseCodeType ErrorItemSave], 
                                         [MPSEWSResponseCodeType ErrorItemSavePropertyError], 
                                         [MPSEWSResponseCodeType ErrorLegacyMailboxFreeBusyViewTypeNotMerged], 
                                         [MPSEWSResponseCodeType ErrorLocalServerObjectNotFound], 
                                         [MPSEWSResponseCodeType ErrorLogonAsNetworkServiceFailed], 
                                         [MPSEWSResponseCodeType ErrorMailboxConfiguration], 
                                         [MPSEWSResponseCodeType ErrorMailboxDataArrayEmpty], 
                                         [MPSEWSResponseCodeType ErrorMailboxDataArrayTooBig], 
                                         [MPSEWSResponseCodeType ErrorMailboxLogonFailed], 
                                         [MPSEWSResponseCodeType ErrorMailboxMoveInProgress], 
                                         [MPSEWSResponseCodeType ErrorMailboxStoreUnavailable], 
                                         [MPSEWSResponseCodeType ErrorMailRecipientNotFound], 
                                         [MPSEWSResponseCodeType ErrorManagedFolderAlreadyExists], 
                                         [MPSEWSResponseCodeType ErrorManagedFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorManagedFoldersRootFailure], 
                                         [MPSEWSResponseCodeType ErrorMeetingSuggestionGenerationFailed], 
                                         [MPSEWSResponseCodeType ErrorMessageDispositionRequired], 
                                         [MPSEWSResponseCodeType ErrorMessageSizeExceeded], 
                                         [MPSEWSResponseCodeType ErrorMimeContentConversionFailed], 
                                         [MPSEWSResponseCodeType ErrorMimeContentInvalid], 
                                         [MPSEWSResponseCodeType ErrorMimeContentInvalidBase64String], 
                                         [MPSEWSResponseCodeType ErrorMissingArgument], 
                                         [MPSEWSResponseCodeType ErrorMissingEmailAddress], 
                                         [MPSEWSResponseCodeType ErrorMissingEmailAddressForManagedFolder], 
                                         [MPSEWSResponseCodeType ErrorMissingInformationEmailAddress], 
                                         [MPSEWSResponseCodeType ErrorMissingInformationReferenceItemId], 
                                         [MPSEWSResponseCodeType ErrorMissingItemForCreateItemAttachment], 
                                         [MPSEWSResponseCodeType ErrorMissingManagedFolderId], 
                                         [MPSEWSResponseCodeType ErrorMissingRecipients], 
                                         [MPSEWSResponseCodeType ErrorMissingUserIdInformation], 
                                         [MPSEWSResponseCodeType ErrorMoreThanOneAccessModeSpecified], 
                                         [MPSEWSResponseCodeType ErrorMoveCopyFailed], 
                                         [MPSEWSResponseCodeType ErrorMoveDistinguishedFolder], 
                                         [MPSEWSResponseCodeType ErrorNameResolutionMultipleResults], 
                                         [MPSEWSResponseCodeType ErrorNameResolutionNoMailbox], 
                                         [MPSEWSResponseCodeType ErrorNameResolutionNoResults], 
                                         [MPSEWSResponseCodeType ErrorNoApplicableProxyCASServersAvailable], 
                                         [MPSEWSResponseCodeType ErrorNoCalendar], 
                                         [MPSEWSResponseCodeType ErrorNoDestinationCASDueToKerberosRequirements], 
                                         [MPSEWSResponseCodeType ErrorNoDestinationCASDueToSSLRequirements], 
                                         [MPSEWSResponseCodeType ErrorNoDestinationCASDueToVersionMismatch], 
                                         [MPSEWSResponseCodeType ErrorNoFolderClassOverride], 
                                         [MPSEWSResponseCodeType ErrorNoFreeBusyAccess], 
                                         [MPSEWSResponseCodeType ErrorNonExistentMailbox], 
                                         [MPSEWSResponseCodeType ErrorNonPrimarySmtpAddress], 
                                         [MPSEWSResponseCodeType ErrorNoPropertyTagForCustomProperties], 
                                         [MPSEWSResponseCodeType ErrorNoPublicFolderReplicaAvailable], 
                                         [MPSEWSResponseCodeType ErrorNoRespondingCASInDestinationSite], 
                                         [MPSEWSResponseCodeType ErrorNotDelegate], 
                                         [MPSEWSResponseCodeType ErrorNotEnoughMemory], 
                                         [MPSEWSResponseCodeType ErrorObjectTypeChanged], 
                                         [MPSEWSResponseCodeType ErrorOccurrenceCrossingBoundary], 
                                         [MPSEWSResponseCodeType ErrorOccurrenceTimeSpanTooBig], 
                                         [MPSEWSResponseCodeType ErrorOperationNotAllowedWithPublicFolderRoot], 
                                         [MPSEWSResponseCodeType ErrorParentFolderIdRequired], 
                                         [MPSEWSResponseCodeType ErrorParentFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorPasswordChangeRequired], 
                                         [MPSEWSResponseCodeType ErrorPasswordExpired], 
                                         [MPSEWSResponseCodeType ErrorPropertyUpdate], 
                                         [MPSEWSResponseCodeType ErrorPropertyValidationFailure], 
                                         [MPSEWSResponseCodeType ErrorProxiedSubscriptionCallFailure], 
                                         [MPSEWSResponseCodeType ErrorProxyCallFailed], 
                                         [MPSEWSResponseCodeType ErrorProxyGroupSidLimitExceeded], 
                                         [MPSEWSResponseCodeType ErrorProxyRequestNotAllowed], 
                                         [MPSEWSResponseCodeType ErrorProxyRequestProcessingFailed], 
                                         [MPSEWSResponseCodeType ErrorProxyServiceDiscoveryFailed], 
                                         [MPSEWSResponseCodeType ErrorProxyTokenExpired], 
                                         [MPSEWSResponseCodeType ErrorPublicFolderRequestProcessingFailed], 
                                         [MPSEWSResponseCodeType ErrorPublicFolderServerNotFound], 
                                         [MPSEWSResponseCodeType ErrorQueryFilterTooLong], 
                                         [MPSEWSResponseCodeType ErrorQuotaExceeded], 
                                         [MPSEWSResponseCodeType ErrorReadEventsFailed], 
                                         [MPSEWSResponseCodeType ErrorReadReceiptNotPending], 
                                         [MPSEWSResponseCodeType ErrorRecurrenceEndDateTooBig], 
                                         [MPSEWSResponseCodeType ErrorRecurrenceHasNoOccurrence], 
                                         [MPSEWSResponseCodeType ErrorRemoveDelegatesFailed], 
                                         [MPSEWSResponseCodeType ErrorRequestAborted], 
                                         [MPSEWSResponseCodeType ErrorRequestStreamTooBig], 
                                         [MPSEWSResponseCodeType ErrorRequiredPropertyMissing], 
                                         [MPSEWSResponseCodeType ErrorResolveNamesInvalidFolderType], 
                                         [MPSEWSResponseCodeType ErrorResolveNamesOnlyOneContactsFolderAllowed], 
                                         [MPSEWSResponseCodeType ErrorResponseSchemaValidation], 
                                         [MPSEWSResponseCodeType ErrorRestrictionTooLong], 
                                         [MPSEWSResponseCodeType ErrorRestrictionTooComplex], 
                                         [MPSEWSResponseCodeType ErrorResultSetTooBig], 
                                         [MPSEWSResponseCodeType ErrorInvalidExchangeImpersonationHeaderData], 
                                         [MPSEWSResponseCodeType ErrorSavedItemFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorSchemaValidation], 
                                         [MPSEWSResponseCodeType ErrorSearchFolderNotInitialized], 
                                         [MPSEWSResponseCodeType ErrorSendAsDenied], 
                                         [MPSEWSResponseCodeType ErrorSendMeetingCancellationsRequired], 
                                         [MPSEWSResponseCodeType ErrorSendMeetingInvitationsOrCancellationsRequired], 
                                         [MPSEWSResponseCodeType ErrorSendMeetingInvitationsRequired], 
                                         [MPSEWSResponseCodeType ErrorSentMeetingRequestUpdate], 
                                         [MPSEWSResponseCodeType ErrorSentTaskRequestUpdate], 
                                         [MPSEWSResponseCodeType ErrorServerBusy], 
                                         [MPSEWSResponseCodeType ErrorServiceDiscoveryFailed], 
                                         [MPSEWSResponseCodeType ErrorStaleObject], 
                                         [MPSEWSResponseCodeType ErrorSubscriptionAccessDenied], 
                                         [MPSEWSResponseCodeType ErrorSubscriptionDelegateAccessNotSupported], 
                                         [MPSEWSResponseCodeType ErrorSubscriptionNotFound], 
                                         [MPSEWSResponseCodeType ErrorSyncFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorTimeIntervalTooBig], 
                                         [MPSEWSResponseCodeType ErrorTimeoutExpired], 
                                         [MPSEWSResponseCodeType ErrorTimeZone], 
                                         [MPSEWSResponseCodeType ErrorToFolderNotFound], 
                                         [MPSEWSResponseCodeType ErrorTokenSerializationDenied], 
                                         [MPSEWSResponseCodeType ErrorUpdatePropertyMismatch], 
                                         [MPSEWSResponseCodeType ErrorUnableToGetUserOofSettings], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedSubFilter], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedCulture], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedMapiPropertyType], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedMimeConversion], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedPathForQuery], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedPathForSortGroup], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedPropertyDefinition], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedQueryFilter], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedRecurrence], 
                                         [MPSEWSResponseCodeType ErrorUnsupportedTypeForConversion], 
                                         [MPSEWSResponseCodeType ErrorUpdateDelegatesFailed], 
                                         [MPSEWSResponseCodeType ErrorVoiceMailNotImplemented], 
                                         [MPSEWSResponseCodeType ErrorVirusDetected], 
                                         [MPSEWSResponseCodeType ErrorVirusMessageDeleted], 
                                         [MPSEWSResponseCodeType ErrorWebRequestInInvalidState], 
                                         [MPSEWSResponseCodeType ErrorWin32InteropError], 
                                         [MPSEWSResponseCodeType ErrorWorkingHoursSaveFailed], 
                                         [MPSEWSResponseCodeType ErrorWorkingHoursXmlMalformed], nil];
    [[[MPSEWSResponseCodeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSResponseCodeType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) NoError { return @"NoError"; }
+ (NSString *) ErrorAccessDenied { return @"ErrorAccessDenied"; }
+ (NSString *) ErrorAccountDisabled { return @"ErrorAccountDisabled"; }
+ (NSString *) ErrorAddDelegatesFailed { return @"ErrorAddDelegatesFailed"; }
+ (NSString *) ErrorAddressSpaceNotFound { return @"ErrorAddressSpaceNotFound"; }
+ (NSString *) ErrorADOperation { return @"ErrorADOperation"; }
+ (NSString *) ErrorADSessionFilter { return @"ErrorADSessionFilter"; }
+ (NSString *) ErrorADUnavailable { return @"ErrorADUnavailable"; }
+ (NSString *) ErrorAutoDiscoverFailed { return @"ErrorAutoDiscoverFailed"; }
+ (NSString *) ErrorAffectedTaskOccurrencesRequired { return @"ErrorAffectedTaskOccurrencesRequired"; }
+ (NSString *) ErrorAttachmentSizeLimitExceeded { return @"ErrorAttachmentSizeLimitExceeded"; }
+ (NSString *) ErrorAvailabilityConfigNotFound { return @"ErrorAvailabilityConfigNotFound"; }
+ (NSString *) ErrorBatchProcessingStopped { return @"ErrorBatchProcessingStopped"; }
+ (NSString *) ErrorCalendarCannotMoveOrCopyOccurrence { return @"ErrorCalendarCannotMoveOrCopyOccurrence"; }
+ (NSString *) ErrorCalendarCannotUpdateDeletedItem { return @"ErrorCalendarCannotUpdateDeletedItem"; }
+ (NSString *) ErrorCalendarCannotUseIdForOccurrenceId { return @"ErrorCalendarCannotUseIdForOccurrenceId"; }
+ (NSString *) ErrorCalendarCannotUseIdForRecurringMasterId { return @"ErrorCalendarCannotUseIdForRecurringMasterId"; }
+ (NSString *) ErrorCalendarDurationIsTooLong { return @"ErrorCalendarDurationIsTooLong"; }
+ (NSString *) ErrorCalendarEndDateIsEarlierThanStartDate { return @"ErrorCalendarEndDateIsEarlierThanStartDate"; }
+ (NSString *) ErrorCalendarFolderIsInvalidForCalendarView { return @"ErrorCalendarFolderIsInvalidForCalendarView"; }
+ (NSString *) ErrorCalendarInvalidAttributeValue { return @"ErrorCalendarInvalidAttributeValue"; }
+ (NSString *) ErrorCalendarInvalidDayForTimeChangePattern { return @"ErrorCalendarInvalidDayForTimeChangePattern"; }
+ (NSString *) ErrorCalendarInvalidDayForWeeklyRecurrence { return @"ErrorCalendarInvalidDayForWeeklyRecurrence"; }
+ (NSString *) ErrorCalendarInvalidPropertyState { return @"ErrorCalendarInvalidPropertyState"; }
+ (NSString *) ErrorCalendarInvalidPropertyValue { return @"ErrorCalendarInvalidPropertyValue"; }
+ (NSString *) ErrorCalendarInvalidRecurrence { return @"ErrorCalendarInvalidRecurrence"; }
+ (NSString *) ErrorCalendarInvalidTimeZone { return @"ErrorCalendarInvalidTimeZone"; }
+ (NSString *) ErrorCalendarIsDelegatedForAccept { return @"ErrorCalendarIsDelegatedForAccept"; }
+ (NSString *) ErrorCalendarIsDelegatedForDecline { return @"ErrorCalendarIsDelegatedForDecline"; }
+ (NSString *) ErrorCalendarIsDelegatedForRemove { return @"ErrorCalendarIsDelegatedForRemove"; }
+ (NSString *) ErrorCalendarIsDelegatedForTentative { return @"ErrorCalendarIsDelegatedForTentative"; }
+ (NSString *) ErrorCalendarIsNotOrganizer { return @"ErrorCalendarIsNotOrganizer"; }
+ (NSString *) ErrorCalendarIsOrganizerForAccept { return @"ErrorCalendarIsOrganizerForAccept"; }
+ (NSString *) ErrorCalendarIsOrganizerForDecline { return @"ErrorCalendarIsOrganizerForDecline"; }
+ (NSString *) ErrorCalendarIsOrganizerForRemove { return @"ErrorCalendarIsOrganizerForRemove"; }
+ (NSString *) ErrorCalendarIsOrganizerForTentative { return @"ErrorCalendarIsOrganizerForTentative"; }
+ (NSString *) ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange { return @"ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange"; }
+ (NSString *) ErrorCalendarOccurrenceIsDeletedFromRecurrence { return @"ErrorCalendarOccurrenceIsDeletedFromRecurrence"; }
+ (NSString *) ErrorCalendarOutOfRange { return @"ErrorCalendarOutOfRange"; }
+ (NSString *) ErrorCalendarMeetingRequestIsOutOfDate { return @"ErrorCalendarMeetingRequestIsOutOfDate"; }
+ (NSString *) ErrorCalendarViewRangeTooBig { return @"ErrorCalendarViewRangeTooBig"; }
+ (NSString *) ErrorCannotCreateCalendarItemInNonCalendarFolder { return @"ErrorCannotCreateCalendarItemInNonCalendarFolder"; }
+ (NSString *) ErrorCannotCreateContactInNonContactFolder { return @"ErrorCannotCreateContactInNonContactFolder"; }
+ (NSString *) ErrorCannotCreatePostItemInNonMailFolder { return @"ErrorCannotCreatePostItemInNonMailFolder"; }
+ (NSString *) ErrorCannotCreateTaskInNonTaskFolder { return @"ErrorCannotCreateTaskInNonTaskFolder"; }
+ (NSString *) ErrorCannotDeleteObject { return @"ErrorCannotDeleteObject"; }
+ (NSString *) ErrorCannotOpenFileAttachment { return @"ErrorCannotOpenFileAttachment"; }
+ (NSString *) ErrorCannotDeleteTaskOccurrence { return @"ErrorCannotDeleteTaskOccurrence"; }
+ (NSString *) ErrorCannotSetCalendarPermissionOnNonCalendarFolder { return @"ErrorCannotSetCalendarPermissionOnNonCalendarFolder"; }
+ (NSString *) ErrorCannotSetNonCalendarPermissionOnCalendarFolder { return @"ErrorCannotSetNonCalendarPermissionOnCalendarFolder"; }
+ (NSString *) ErrorCannotSetPermissionUnknownEntries { return @"ErrorCannotSetPermissionUnknownEntries"; }
+ (NSString *) ErrorCannotUseFolderIdForItemId { return @"ErrorCannotUseFolderIdForItemId"; }
+ (NSString *) ErrorCannotUseItemIdForFolderId { return @"ErrorCannotUseItemIdForFolderId"; }
+ (NSString *) ErrorChangeKeyRequired { return @"ErrorChangeKeyRequired"; }
+ (NSString *) ErrorChangeKeyRequiredForWriteOperations { return @"ErrorChangeKeyRequiredForWriteOperations"; }
+ (NSString *) ErrorConnectionFailed { return @"ErrorConnectionFailed"; }
+ (NSString *) ErrorContentConversionFailed { return @"ErrorContentConversionFailed"; }
+ (NSString *) ErrorCorruptData { return @"ErrorCorruptData"; }
+ (NSString *) ErrorCreateItemAccessDenied { return @"ErrorCreateItemAccessDenied"; }
+ (NSString *) ErrorCreateManagedFolderPartialCompletion { return @"ErrorCreateManagedFolderPartialCompletion"; }
+ (NSString *) ErrorCreateSubfolderAccessDenied { return @"ErrorCreateSubfolderAccessDenied"; }
+ (NSString *) ErrorCrossMailboxMoveCopy { return @"ErrorCrossMailboxMoveCopy"; }
+ (NSString *) ErrorDataSizeLimitExceeded { return @"ErrorDataSizeLimitExceeded"; }
+ (NSString *) ErrorDataSourceOperation { return @"ErrorDataSourceOperation"; }
+ (NSString *) ErrorDelegateAlreadyExists { return @"ErrorDelegateAlreadyExists"; }
+ (NSString *) ErrorDelegateCannotAddOwner { return @"ErrorDelegateCannotAddOwner"; }
+ (NSString *) ErrorDelegateMissingConfiguration { return @"ErrorDelegateMissingConfiguration"; }
+ (NSString *) ErrorDelegateNoUser { return @"ErrorDelegateNoUser"; }
+ (NSString *) ErrorDelegateValidationFailed { return @"ErrorDelegateValidationFailed"; }
+ (NSString *) ErrorDeleteDistinguishedFolder { return @"ErrorDeleteDistinguishedFolder"; }
+ (NSString *) ErrorDeleteItemsFailed { return @"ErrorDeleteItemsFailed"; }
+ (NSString *) ErrorDistinguishedUserNotSupported { return @"ErrorDistinguishedUserNotSupported"; }
+ (NSString *) ErrorDuplicateInputFolderNames { return @"ErrorDuplicateInputFolderNames"; }
+ (NSString *) ErrorDuplicateUserIdsSpecified { return @"ErrorDuplicateUserIdsSpecified"; }
+ (NSString *) ErrorEmailAddressMismatch { return @"ErrorEmailAddressMismatch"; }
+ (NSString *) ErrorEventNotFound { return @"ErrorEventNotFound"; }
+ (NSString *) ErrorExpiredSubscription { return @"ErrorExpiredSubscription"; }
+ (NSString *) ErrorFolderCorrupt { return @"ErrorFolderCorrupt"; }
+ (NSString *) ErrorFolderNotFound { return @"ErrorFolderNotFound"; }
+ (NSString *) ErrorFolderPropertRequestFailed { return @"ErrorFolderPropertRequestFailed"; }
+ (NSString *) ErrorFolderSave { return @"ErrorFolderSave"; }
+ (NSString *) ErrorFolderSaveFailed { return @"ErrorFolderSaveFailed"; }
+ (NSString *) ErrorFolderSavePropertyError { return @"ErrorFolderSavePropertyError"; }
+ (NSString *) ErrorFolderExists { return @"ErrorFolderExists"; }
+ (NSString *) ErrorFreeBusyGenerationFailed { return @"ErrorFreeBusyGenerationFailed"; }
+ (NSString *) ErrorGetServerSecurityDescriptorFailed { return @"ErrorGetServerSecurityDescriptorFailed"; }
+ (NSString *) ErrorImpersonateUserDenied { return @"ErrorImpersonateUserDenied"; }
+ (NSString *) ErrorImpersonationDenied { return @"ErrorImpersonationDenied"; }
+ (NSString *) ErrorImpersonationFailed { return @"ErrorImpersonationFailed"; }
+ (NSString *) ErrorIncorrectSchemaVersion { return @"ErrorIncorrectSchemaVersion"; }
+ (NSString *) ErrorIncorrectUpdatePropertyCount { return @"ErrorIncorrectUpdatePropertyCount"; }
+ (NSString *) ErrorIndividualMailboxLimitReached { return @"ErrorIndividualMailboxLimitReached"; }
+ (NSString *) ErrorInsufficientResources { return @"ErrorInsufficientResources"; }
+ (NSString *) ErrorInternalServerError { return @"ErrorInternalServerError"; }
+ (NSString *) ErrorInternalServerTransientError { return @"ErrorInternalServerTransientError"; }
+ (NSString *) ErrorInvalidAccessLevel { return @"ErrorInvalidAccessLevel"; }
+ (NSString *) ErrorInvalidAttachmentId { return @"ErrorInvalidAttachmentId"; }
+ (NSString *) ErrorInvalidAttachmentSubfilter { return @"ErrorInvalidAttachmentSubfilter"; }
+ (NSString *) ErrorInvalidAttachmentSubfilterTextFilter { return @"ErrorInvalidAttachmentSubfilterTextFilter"; }
+ (NSString *) ErrorInvalidAuthorizationContext { return @"ErrorInvalidAuthorizationContext"; }
+ (NSString *) ErrorInvalidChangeKey { return @"ErrorInvalidChangeKey"; }
+ (NSString *) ErrorInvalidClientSecurityContext { return @"ErrorInvalidClientSecurityContext"; }
+ (NSString *) ErrorInvalidCompleteDate { return @"ErrorInvalidCompleteDate"; }
+ (NSString *) ErrorInvalidCrossForestCredentials { return @"ErrorInvalidCrossForestCredentials"; }
+ (NSString *) ErrorInvalidDelegatePermission { return @"ErrorInvalidDelegatePermission"; }
+ (NSString *) ErrorInvalidDelegateUserId { return @"ErrorInvalidDelegateUserId"; }
+ (NSString *) ErrorInvalidExcludesRestriction { return @"ErrorInvalidExcludesRestriction"; }
+ (NSString *) ErrorInvalidExpressionTypeForSubFilter { return @"ErrorInvalidExpressionTypeForSubFilter"; }
+ (NSString *) ErrorInvalidExtendedProperty { return @"ErrorInvalidExtendedProperty"; }
+ (NSString *) ErrorInvalidExtendedPropertyValue { return @"ErrorInvalidExtendedPropertyValue"; }
+ (NSString *) ErrorInvalidFolderId { return @"ErrorInvalidFolderId"; }
+ (NSString *) ErrorInvalidFolderTypeForOperation { return @"ErrorInvalidFolderTypeForOperation"; }
+ (NSString *) ErrorInvalidFractionalPagingParameters { return @"ErrorInvalidFractionalPagingParameters"; }
+ (NSString *) ErrorInvalidFreeBusyViewType { return @"ErrorInvalidFreeBusyViewType"; }
+ (NSString *) ErrorInvalidId { return @"ErrorInvalidId"; }
+ (NSString *) ErrorInvalidIdEmpty { return @"ErrorInvalidIdEmpty"; }
+ (NSString *) ErrorInvalidIdMalformed { return @"ErrorInvalidIdMalformed"; }
+ (NSString *) ErrorInvalidIdMalformedEwsLegacyIdFormat { return @"ErrorInvalidIdMalformedEwsLegacyIdFormat"; }
+ (NSString *) ErrorInvalidIdMonikerTooLong { return @"ErrorInvalidIdMonikerTooLong"; }
+ (NSString *) ErrorInvalidIdNotAnItemAttachmentId { return @"ErrorInvalidIdNotAnItemAttachmentId"; }
+ (NSString *) ErrorInvalidIdReturnedByResolveNames { return @"ErrorInvalidIdReturnedByResolveNames"; }
+ (NSString *) ErrorInvalidIdStoreObjectIdTooLong { return @"ErrorInvalidIdStoreObjectIdTooLong"; }
+ (NSString *) ErrorInvalidIdTooManyAttachmentLevels { return @"ErrorInvalidIdTooManyAttachmentLevels"; }
+ (NSString *) ErrorInvalidIdXml { return @"ErrorInvalidIdXml"; }
+ (NSString *) ErrorInvalidIndexedPagingParameters { return @"ErrorInvalidIndexedPagingParameters"; }
+ (NSString *) ErrorInvalidInternetHeaderChildNodes { return @"ErrorInvalidInternetHeaderChildNodes"; }
+ (NSString *) ErrorInvalidItemForOperationCreateItemAttachment { return @"ErrorInvalidItemForOperationCreateItemAttachment"; }
+ (NSString *) ErrorInvalidItemForOperationCreateItem { return @"ErrorInvalidItemForOperationCreateItem"; }
+ (NSString *) ErrorInvalidItemForOperationAcceptItem { return @"ErrorInvalidItemForOperationAcceptItem"; }
+ (NSString *) ErrorInvalidItemForOperationDeclineItem { return @"ErrorInvalidItemForOperationDeclineItem"; }
+ (NSString *) ErrorInvalidItemForOperationCancelItem { return @"ErrorInvalidItemForOperationCancelItem"; }
+ (NSString *) ErrorInvalidItemForOperationExpandDL { return @"ErrorInvalidItemForOperationExpandDL"; }
+ (NSString *) ErrorInvalidItemForOperationRemoveItem { return @"ErrorInvalidItemForOperationRemoveItem"; }
+ (NSString *) ErrorInvalidItemForOperationSendItem { return @"ErrorInvalidItemForOperationSendItem"; }
+ (NSString *) ErrorInvalidItemForOperationTentative { return @"ErrorInvalidItemForOperationTentative"; }
+ (NSString *) ErrorInvalidManagedFolderProperty { return @"ErrorInvalidManagedFolderProperty"; }
+ (NSString *) ErrorInvalidManagedFolderQuota { return @"ErrorInvalidManagedFolderQuota"; }
+ (NSString *) ErrorInvalidManagedFolderSize { return @"ErrorInvalidManagedFolderSize"; }
+ (NSString *) ErrorInvalidMergedFreeBusyInterval { return @"ErrorInvalidMergedFreeBusyInterval"; }
+ (NSString *) ErrorInvalidNameForNameResolution { return @"ErrorInvalidNameForNameResolution"; }
+ (NSString *) ErrorInvalidOperation { return @"ErrorInvalidOperation"; }
+ (NSString *) ErrorInvalidNetworkServiceContext { return @"ErrorInvalidNetworkServiceContext"; }
+ (NSString *) ErrorInvalidOofParameter { return @"ErrorInvalidOofParameter"; }
+ (NSString *) ErrorInvalidPagingMaxRows { return @"ErrorInvalidPagingMaxRows"; }
+ (NSString *) ErrorInvalidParentFolder { return @"ErrorInvalidParentFolder"; }
+ (NSString *) ErrorInvalidPercentCompleteValue { return @"ErrorInvalidPercentCompleteValue"; }
+ (NSString *) ErrorInvalidPermissionSettings { return @"ErrorInvalidPermissionSettings"; }
+ (NSString *) ErrorInvalidUserInfo { return @"ErrorInvalidUserInfo"; }
+ (NSString *) ErrorInvalidPropertyAppend { return @"ErrorInvalidPropertyAppend"; }
+ (NSString *) ErrorInvalidPropertyDelete { return @"ErrorInvalidPropertyDelete"; }
+ (NSString *) ErrorInvalidPropertyForExists { return @"ErrorInvalidPropertyForExists"; }
+ (NSString *) ErrorInvalidPropertyForOperation { return @"ErrorInvalidPropertyForOperation"; }
+ (NSString *) ErrorInvalidPropertyRequest { return @"ErrorInvalidPropertyRequest"; }
+ (NSString *) ErrorInvalidPropertySet { return @"ErrorInvalidPropertySet"; }
+ (NSString *) ErrorInvalidPropertyUpdateSentMessage { return @"ErrorInvalidPropertyUpdateSentMessage"; }
+ (NSString *) ErrorInvalidProxySecurityContext { return @"ErrorInvalidProxySecurityContext"; }
+ (NSString *) ErrorInvalidPullSubscriptionId { return @"ErrorInvalidPullSubscriptionId"; }
+ (NSString *) ErrorInvalidPushSubscriptionUrl { return @"ErrorInvalidPushSubscriptionUrl"; }
+ (NSString *) ErrorInvalidRecipients { return @"ErrorInvalidRecipients"; }
+ (NSString *) ErrorInvalidRecipientSubfilter { return @"ErrorInvalidRecipientSubfilter"; }
+ (NSString *) ErrorInvalidRecipientSubfilterComparison { return @"ErrorInvalidRecipientSubfilterComparison"; }
+ (NSString *) ErrorInvalidRecipientSubfilterOrder { return @"ErrorInvalidRecipientSubfilterOrder"; }
+ (NSString *) ErrorInvalidRecipientSubfilterTextFilter { return @"ErrorInvalidRecipientSubfilterTextFilter"; }
+ (NSString *) ErrorInvalidReferenceItem { return @"ErrorInvalidReferenceItem"; }
+ (NSString *) ErrorInvalidRequest { return @"ErrorInvalidRequest"; }
+ (NSString *) ErrorInvalidRestriction { return @"ErrorInvalidRestriction"; }
+ (NSString *) ErrorInvalidRoutingType { return @"ErrorInvalidRoutingType"; }
+ (NSString *) ErrorInvalidScheduledOofDuration { return @"ErrorInvalidScheduledOofDuration"; }
+ (NSString *) ErrorInvalidSecurityDescriptor { return @"ErrorInvalidSecurityDescriptor"; }
+ (NSString *) ErrorInvalidSendItemSaveSettings { return @"ErrorInvalidSendItemSaveSettings"; }
+ (NSString *) ErrorInvalidSerializedAccessToken { return @"ErrorInvalidSerializedAccessToken"; }
+ (NSString *) ErrorInvalidServerVersion { return @"ErrorInvalidServerVersion"; }
+ (NSString *) ErrorInvalidSid { return @"ErrorInvalidSid"; }
+ (NSString *) ErrorInvalidSmtpAddress { return @"ErrorInvalidSmtpAddress"; }
+ (NSString *) ErrorInvalidSubfilterType { return @"ErrorInvalidSubfilterType"; }
+ (NSString *) ErrorInvalidSubfilterTypeNotAttendeeType { return @"ErrorInvalidSubfilterTypeNotAttendeeType"; }
+ (NSString *) ErrorInvalidSubfilterTypeNotRecipientType { return @"ErrorInvalidSubfilterTypeNotRecipientType"; }
+ (NSString *) ErrorInvalidSubscription { return @"ErrorInvalidSubscription"; }
+ (NSString *) ErrorInvalidSubscriptionRequest { return @"ErrorInvalidSubscriptionRequest"; }
+ (NSString *) ErrorInvalidSyncStateData { return @"ErrorInvalidSyncStateData"; }
+ (NSString *) ErrorInvalidTimeInterval { return @"ErrorInvalidTimeInterval"; }
+ (NSString *) ErrorInvalidUserOofSettings { return @"ErrorInvalidUserOofSettings"; }
+ (NSString *) ErrorInvalidUserPrincipalName { return @"ErrorInvalidUserPrincipalName"; }
+ (NSString *) ErrorInvalidUserSid { return @"ErrorInvalidUserSid"; }
+ (NSString *) ErrorInvalidUserSidMissingUPN { return @"ErrorInvalidUserSidMissingUPN"; }
+ (NSString *) ErrorInvalidValueForProperty { return @"ErrorInvalidValueForProperty"; }
+ (NSString *) ErrorInvalidWatermark { return @"ErrorInvalidWatermark"; }
+ (NSString *) ErrorIrresolvableConflict { return @"ErrorIrresolvableConflict"; }
+ (NSString *) ErrorItemCorrupt { return @"ErrorItemCorrupt"; }
+ (NSString *) ErrorItemNotFound { return @"ErrorItemNotFound"; }
+ (NSString *) ErrorItemPropertyRequestFailed { return @"ErrorItemPropertyRequestFailed"; }
+ (NSString *) ErrorItemSave { return @"ErrorItemSave"; }
+ (NSString *) ErrorItemSavePropertyError { return @"ErrorItemSavePropertyError"; }
+ (NSString *) ErrorLegacyMailboxFreeBusyViewTypeNotMerged { return @"ErrorLegacyMailboxFreeBusyViewTypeNotMerged"; }
+ (NSString *) ErrorLocalServerObjectNotFound { return @"ErrorLocalServerObjectNotFound"; }
+ (NSString *) ErrorLogonAsNetworkServiceFailed { return @"ErrorLogonAsNetworkServiceFailed"; }
+ (NSString *) ErrorMailboxConfiguration { return @"ErrorMailboxConfiguration"; }
+ (NSString *) ErrorMailboxDataArrayEmpty { return @"ErrorMailboxDataArrayEmpty"; }
+ (NSString *) ErrorMailboxDataArrayTooBig { return @"ErrorMailboxDataArrayTooBig"; }
+ (NSString *) ErrorMailboxLogonFailed { return @"ErrorMailboxLogonFailed"; }
+ (NSString *) ErrorMailboxMoveInProgress { return @"ErrorMailboxMoveInProgress"; }
+ (NSString *) ErrorMailboxStoreUnavailable { return @"ErrorMailboxStoreUnavailable"; }
+ (NSString *) ErrorMailRecipientNotFound { return @"ErrorMailRecipientNotFound"; }
+ (NSString *) ErrorManagedFolderAlreadyExists { return @"ErrorManagedFolderAlreadyExists"; }
+ (NSString *) ErrorManagedFolderNotFound { return @"ErrorManagedFolderNotFound"; }
+ (NSString *) ErrorManagedFoldersRootFailure { return @"ErrorManagedFoldersRootFailure"; }
+ (NSString *) ErrorMeetingSuggestionGenerationFailed { return @"ErrorMeetingSuggestionGenerationFailed"; }
+ (NSString *) ErrorMessageDispositionRequired { return @"ErrorMessageDispositionRequired"; }
+ (NSString *) ErrorMessageSizeExceeded { return @"ErrorMessageSizeExceeded"; }
+ (NSString *) ErrorMimeContentConversionFailed { return @"ErrorMimeContentConversionFailed"; }
+ (NSString *) ErrorMimeContentInvalid { return @"ErrorMimeContentInvalid"; }
+ (NSString *) ErrorMimeContentInvalidBase64String { return @"ErrorMimeContentInvalidBase64String"; }
+ (NSString *) ErrorMissingArgument { return @"ErrorMissingArgument"; }
+ (NSString *) ErrorMissingEmailAddress { return @"ErrorMissingEmailAddress"; }
+ (NSString *) ErrorMissingEmailAddressForManagedFolder { return @"ErrorMissingEmailAddressForManagedFolder"; }
+ (NSString *) ErrorMissingInformationEmailAddress { return @"ErrorMissingInformationEmailAddress"; }
+ (NSString *) ErrorMissingInformationReferenceItemId { return @"ErrorMissingInformationReferenceItemId"; }
+ (NSString *) ErrorMissingItemForCreateItemAttachment { return @"ErrorMissingItemForCreateItemAttachment"; }
+ (NSString *) ErrorMissingManagedFolderId { return @"ErrorMissingManagedFolderId"; }
+ (NSString *) ErrorMissingRecipients { return @"ErrorMissingRecipients"; }
+ (NSString *) ErrorMissingUserIdInformation { return @"ErrorMissingUserIdInformation"; }
+ (NSString *) ErrorMoreThanOneAccessModeSpecified { return @"ErrorMoreThanOneAccessModeSpecified"; }
+ (NSString *) ErrorMoveCopyFailed { return @"ErrorMoveCopyFailed"; }
+ (NSString *) ErrorMoveDistinguishedFolder { return @"ErrorMoveDistinguishedFolder"; }
+ (NSString *) ErrorNameResolutionMultipleResults { return @"ErrorNameResolutionMultipleResults"; }
+ (NSString *) ErrorNameResolutionNoMailbox { return @"ErrorNameResolutionNoMailbox"; }
+ (NSString *) ErrorNameResolutionNoResults { return @"ErrorNameResolutionNoResults"; }
+ (NSString *) ErrorNoApplicableProxyCASServersAvailable { return @"ErrorNoApplicableProxyCASServersAvailable"; }
+ (NSString *) ErrorNoCalendar { return @"ErrorNoCalendar"; }
+ (NSString *) ErrorNoDestinationCASDueToKerberosRequirements { return @"ErrorNoDestinationCASDueToKerberosRequirements"; }
+ (NSString *) ErrorNoDestinationCASDueToSSLRequirements { return @"ErrorNoDestinationCASDueToSSLRequirements"; }
+ (NSString *) ErrorNoDestinationCASDueToVersionMismatch { return @"ErrorNoDestinationCASDueToVersionMismatch"; }
+ (NSString *) ErrorNoFolderClassOverride { return @"ErrorNoFolderClassOverride"; }
+ (NSString *) ErrorNoFreeBusyAccess { return @"ErrorNoFreeBusyAccess"; }
+ (NSString *) ErrorNonExistentMailbox { return @"ErrorNonExistentMailbox"; }
+ (NSString *) ErrorNonPrimarySmtpAddress { return @"ErrorNonPrimarySmtpAddress"; }
+ (NSString *) ErrorNoPropertyTagForCustomProperties { return @"ErrorNoPropertyTagForCustomProperties"; }
+ (NSString *) ErrorNoPublicFolderReplicaAvailable { return @"ErrorNoPublicFolderReplicaAvailable"; }
+ (NSString *) ErrorNoRespondingCASInDestinationSite { return @"ErrorNoRespondingCASInDestinationSite"; }
+ (NSString *) ErrorNotDelegate { return @"ErrorNotDelegate"; }
+ (NSString *) ErrorNotEnoughMemory { return @"ErrorNotEnoughMemory"; }
+ (NSString *) ErrorObjectTypeChanged { return @"ErrorObjectTypeChanged"; }
+ (NSString *) ErrorOccurrenceCrossingBoundary { return @"ErrorOccurrenceCrossingBoundary"; }
+ (NSString *) ErrorOccurrenceTimeSpanTooBig { return @"ErrorOccurrenceTimeSpanTooBig"; }
+ (NSString *) ErrorOperationNotAllowedWithPublicFolderRoot { return @"ErrorOperationNotAllowedWithPublicFolderRoot"; }
+ (NSString *) ErrorParentFolderIdRequired { return @"ErrorParentFolderIdRequired"; }
+ (NSString *) ErrorParentFolderNotFound { return @"ErrorParentFolderNotFound"; }
+ (NSString *) ErrorPasswordChangeRequired { return @"ErrorPasswordChangeRequired"; }
+ (NSString *) ErrorPasswordExpired { return @"ErrorPasswordExpired"; }
+ (NSString *) ErrorPropertyUpdate { return @"ErrorPropertyUpdate"; }
+ (NSString *) ErrorPropertyValidationFailure { return @"ErrorPropertyValidationFailure"; }
+ (NSString *) ErrorProxiedSubscriptionCallFailure { return @"ErrorProxiedSubscriptionCallFailure"; }
+ (NSString *) ErrorProxyCallFailed { return @"ErrorProxyCallFailed"; }
+ (NSString *) ErrorProxyGroupSidLimitExceeded { return @"ErrorProxyGroupSidLimitExceeded"; }
+ (NSString *) ErrorProxyRequestNotAllowed { return @"ErrorProxyRequestNotAllowed"; }
+ (NSString *) ErrorProxyRequestProcessingFailed { return @"ErrorProxyRequestProcessingFailed"; }
+ (NSString *) ErrorProxyServiceDiscoveryFailed { return @"ErrorProxyServiceDiscoveryFailed"; }
+ (NSString *) ErrorProxyTokenExpired { return @"ErrorProxyTokenExpired"; }
+ (NSString *) ErrorPublicFolderRequestProcessingFailed { return @"ErrorPublicFolderRequestProcessingFailed"; }
+ (NSString *) ErrorPublicFolderServerNotFound { return @"ErrorPublicFolderServerNotFound"; }
+ (NSString *) ErrorQueryFilterTooLong { return @"ErrorQueryFilterTooLong"; }
+ (NSString *) ErrorQuotaExceeded { return @"ErrorQuotaExceeded"; }
+ (NSString *) ErrorReadEventsFailed { return @"ErrorReadEventsFailed"; }
+ (NSString *) ErrorReadReceiptNotPending { return @"ErrorReadReceiptNotPending"; }
+ (NSString *) ErrorRecurrenceEndDateTooBig { return @"ErrorRecurrenceEndDateTooBig"; }
+ (NSString *) ErrorRecurrenceHasNoOccurrence { return @"ErrorRecurrenceHasNoOccurrence"; }
+ (NSString *) ErrorRemoveDelegatesFailed { return @"ErrorRemoveDelegatesFailed"; }
+ (NSString *) ErrorRequestAborted { return @"ErrorRequestAborted"; }
+ (NSString *) ErrorRequestStreamTooBig { return @"ErrorRequestStreamTooBig"; }
+ (NSString *) ErrorRequiredPropertyMissing { return @"ErrorRequiredPropertyMissing"; }
+ (NSString *) ErrorResolveNamesInvalidFolderType { return @"ErrorResolveNamesInvalidFolderType"; }
+ (NSString *) ErrorResolveNamesOnlyOneContactsFolderAllowed { return @"ErrorResolveNamesOnlyOneContactsFolderAllowed"; }
+ (NSString *) ErrorResponseSchemaValidation { return @"ErrorResponseSchemaValidation"; }
+ (NSString *) ErrorRestrictionTooLong { return @"ErrorRestrictionTooLong"; }
+ (NSString *) ErrorRestrictionTooComplex { return @"ErrorRestrictionTooComplex"; }
+ (NSString *) ErrorResultSetTooBig { return @"ErrorResultSetTooBig"; }
+ (NSString *) ErrorInvalidExchangeImpersonationHeaderData { return @"ErrorInvalidExchangeImpersonationHeaderData"; }
+ (NSString *) ErrorSavedItemFolderNotFound { return @"ErrorSavedItemFolderNotFound"; }
+ (NSString *) ErrorSchemaValidation { return @"ErrorSchemaValidation"; }
+ (NSString *) ErrorSearchFolderNotInitialized { return @"ErrorSearchFolderNotInitialized"; }
+ (NSString *) ErrorSendAsDenied { return @"ErrorSendAsDenied"; }
+ (NSString *) ErrorSendMeetingCancellationsRequired { return @"ErrorSendMeetingCancellationsRequired"; }
+ (NSString *) ErrorSendMeetingInvitationsOrCancellationsRequired { return @"ErrorSendMeetingInvitationsOrCancellationsRequired"; }
+ (NSString *) ErrorSendMeetingInvitationsRequired { return @"ErrorSendMeetingInvitationsRequired"; }
+ (NSString *) ErrorSentMeetingRequestUpdate { return @"ErrorSentMeetingRequestUpdate"; }
+ (NSString *) ErrorSentTaskRequestUpdate { return @"ErrorSentTaskRequestUpdate"; }
+ (NSString *) ErrorServerBusy { return @"ErrorServerBusy"; }
+ (NSString *) ErrorServiceDiscoveryFailed { return @"ErrorServiceDiscoveryFailed"; }
+ (NSString *) ErrorStaleObject { return @"ErrorStaleObject"; }
+ (NSString *) ErrorSubscriptionAccessDenied { return @"ErrorSubscriptionAccessDenied"; }
+ (NSString *) ErrorSubscriptionDelegateAccessNotSupported { return @"ErrorSubscriptionDelegateAccessNotSupported"; }
+ (NSString *) ErrorSubscriptionNotFound { return @"ErrorSubscriptionNotFound"; }
+ (NSString *) ErrorSyncFolderNotFound { return @"ErrorSyncFolderNotFound"; }
+ (NSString *) ErrorTimeIntervalTooBig { return @"ErrorTimeIntervalTooBig"; }
+ (NSString *) ErrorTimeoutExpired { return @"ErrorTimeoutExpired"; }
+ (NSString *) ErrorTimeZone { return @"ErrorTimeZone"; }
+ (NSString *) ErrorToFolderNotFound { return @"ErrorToFolderNotFound"; }
+ (NSString *) ErrorTokenSerializationDenied { return @"ErrorTokenSerializationDenied"; }
+ (NSString *) ErrorUpdatePropertyMismatch { return @"ErrorUpdatePropertyMismatch"; }
+ (NSString *) ErrorUnableToGetUserOofSettings { return @"ErrorUnableToGetUserOofSettings"; }
+ (NSString *) ErrorUnsupportedSubFilter { return @"ErrorUnsupportedSubFilter"; }
+ (NSString *) ErrorUnsupportedCulture { return @"ErrorUnsupportedCulture"; }
+ (NSString *) ErrorUnsupportedMapiPropertyType { return @"ErrorUnsupportedMapiPropertyType"; }
+ (NSString *) ErrorUnsupportedMimeConversion { return @"ErrorUnsupportedMimeConversion"; }
+ (NSString *) ErrorUnsupportedPathForQuery { return @"ErrorUnsupportedPathForQuery"; }
+ (NSString *) ErrorUnsupportedPathForSortGroup { return @"ErrorUnsupportedPathForSortGroup"; }
+ (NSString *) ErrorUnsupportedPropertyDefinition { return @"ErrorUnsupportedPropertyDefinition"; }
+ (NSString *) ErrorUnsupportedQueryFilter { return @"ErrorUnsupportedQueryFilter"; }
+ (NSString *) ErrorUnsupportedRecurrence { return @"ErrorUnsupportedRecurrence"; }
+ (NSString *) ErrorUnsupportedTypeForConversion { return @"ErrorUnsupportedTypeForConversion"; }
+ (NSString *) ErrorUpdateDelegatesFailed { return @"ErrorUpdateDelegatesFailed"; }
+ (NSString *) ErrorVoiceMailNotImplemented { return @"ErrorVoiceMailNotImplemented"; }
+ (NSString *) ErrorVirusDetected { return @"ErrorVirusDetected"; }
+ (NSString *) ErrorVirusMessageDeleted { return @"ErrorVirusMessageDeleted"; }
+ (NSString *) ErrorWebRequestInInvalidState { return @"ErrorWebRequestInInvalidState"; }
+ (NSString *) ErrorWin32InteropError { return @"ErrorWin32InteropError"; }
+ (NSString *) ErrorWorkingHoursSaveFailed { return @"ErrorWorkingHoursSaveFailed"; }
+ (NSString *) ErrorWorkingHoursXmlMalformed { return @"ErrorWorkingHoursXmlMalformed"; }
@end

