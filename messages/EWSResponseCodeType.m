#import <Foundation/Foundation.h>

#import "EWSResponseCodeType.h"
@implementation EWSResponseCodeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSResponseCodeType NoError], 
                                         [EWSResponseCodeType ErrorAccessDenied], 
                                         [EWSResponseCodeType ErrorAccountDisabled], 
                                         [EWSResponseCodeType ErrorAddDelegatesFailed], 
                                         [EWSResponseCodeType ErrorAddressSpaceNotFound], 
                                         [EWSResponseCodeType ErrorADOperation], 
                                         [EWSResponseCodeType ErrorADSessionFilter], 
                                         [EWSResponseCodeType ErrorADUnavailable], 
                                         [EWSResponseCodeType ErrorAutoDiscoverFailed], 
                                         [EWSResponseCodeType ErrorAffectedTaskOccurrencesRequired], 
                                         [EWSResponseCodeType ErrorAttachmentSizeLimitExceeded], 
                                         [EWSResponseCodeType ErrorAvailabilityConfigNotFound], 
                                         [EWSResponseCodeType ErrorBatchProcessingStopped], 
                                         [EWSResponseCodeType ErrorCalendarCannotMoveOrCopyOccurrence], 
                                         [EWSResponseCodeType ErrorCalendarCannotUpdateDeletedItem], 
                                         [EWSResponseCodeType ErrorCalendarCannotUseIdForOccurrenceId], 
                                         [EWSResponseCodeType ErrorCalendarCannotUseIdForRecurringMasterId], 
                                         [EWSResponseCodeType ErrorCalendarDurationIsTooLong], 
                                         [EWSResponseCodeType ErrorCalendarEndDateIsEarlierThanStartDate], 
                                         [EWSResponseCodeType ErrorCalendarFolderIsInvalidForCalendarView], 
                                         [EWSResponseCodeType ErrorCalendarInvalidAttributeValue], 
                                         [EWSResponseCodeType ErrorCalendarInvalidDayForTimeChangePattern], 
                                         [EWSResponseCodeType ErrorCalendarInvalidDayForWeeklyRecurrence], 
                                         [EWSResponseCodeType ErrorCalendarInvalidPropertyState], 
                                         [EWSResponseCodeType ErrorCalendarInvalidPropertyValue], 
                                         [EWSResponseCodeType ErrorCalendarInvalidRecurrence], 
                                         [EWSResponseCodeType ErrorCalendarInvalidTimeZone], 
                                         [EWSResponseCodeType ErrorCalendarIsDelegatedForAccept], 
                                         [EWSResponseCodeType ErrorCalendarIsDelegatedForDecline], 
                                         [EWSResponseCodeType ErrorCalendarIsDelegatedForRemove], 
                                         [EWSResponseCodeType ErrorCalendarIsDelegatedForTentative], 
                                         [EWSResponseCodeType ErrorCalendarIsNotOrganizer], 
                                         [EWSResponseCodeType ErrorCalendarIsOrganizerForAccept], 
                                         [EWSResponseCodeType ErrorCalendarIsOrganizerForDecline], 
                                         [EWSResponseCodeType ErrorCalendarIsOrganizerForRemove], 
                                         [EWSResponseCodeType ErrorCalendarIsOrganizerForTentative], 
                                         [EWSResponseCodeType ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange], 
                                         [EWSResponseCodeType ErrorCalendarOccurrenceIsDeletedFromRecurrence], 
                                         [EWSResponseCodeType ErrorCalendarOutOfRange], 
                                         [EWSResponseCodeType ErrorCalendarMeetingRequestIsOutOfDate], 
                                         [EWSResponseCodeType ErrorCalendarViewRangeTooBig], 
                                         [EWSResponseCodeType ErrorCannotCreateCalendarItemInNonCalendarFolder], 
                                         [EWSResponseCodeType ErrorCannotCreateContactInNonContactFolder], 
                                         [EWSResponseCodeType ErrorCannotCreatePostItemInNonMailFolder], 
                                         [EWSResponseCodeType ErrorCannotCreateTaskInNonTaskFolder], 
                                         [EWSResponseCodeType ErrorCannotDeleteObject], 
                                         [EWSResponseCodeType ErrorCannotOpenFileAttachment], 
                                         [EWSResponseCodeType ErrorCannotDeleteTaskOccurrence], 
                                         [EWSResponseCodeType ErrorCannotSetCalendarPermissionOnNonCalendarFolder], 
                                         [EWSResponseCodeType ErrorCannotSetNonCalendarPermissionOnCalendarFolder], 
                                         [EWSResponseCodeType ErrorCannotSetPermissionUnknownEntries], 
                                         [EWSResponseCodeType ErrorCannotUseFolderIdForItemId], 
                                         [EWSResponseCodeType ErrorCannotUseItemIdForFolderId], 
                                         [EWSResponseCodeType ErrorChangeKeyRequired], 
                                         [EWSResponseCodeType ErrorChangeKeyRequiredForWriteOperations], 
                                         [EWSResponseCodeType ErrorConnectionFailed], 
                                         [EWSResponseCodeType ErrorContentConversionFailed], 
                                         [EWSResponseCodeType ErrorCorruptData], 
                                         [EWSResponseCodeType ErrorCreateItemAccessDenied], 
                                         [EWSResponseCodeType ErrorCreateManagedFolderPartialCompletion], 
                                         [EWSResponseCodeType ErrorCreateSubfolderAccessDenied], 
                                         [EWSResponseCodeType ErrorCrossMailboxMoveCopy], 
                                         [EWSResponseCodeType ErrorDataSizeLimitExceeded], 
                                         [EWSResponseCodeType ErrorDataSourceOperation], 
                                         [EWSResponseCodeType ErrorDelegateAlreadyExists], 
                                         [EWSResponseCodeType ErrorDelegateCannotAddOwner], 
                                         [EWSResponseCodeType ErrorDelegateMissingConfiguration], 
                                         [EWSResponseCodeType ErrorDelegateNoUser], 
                                         [EWSResponseCodeType ErrorDelegateValidationFailed], 
                                         [EWSResponseCodeType ErrorDeleteDistinguishedFolder], 
                                         [EWSResponseCodeType ErrorDeleteItemsFailed], 
                                         [EWSResponseCodeType ErrorDistinguishedUserNotSupported], 
                                         [EWSResponseCodeType ErrorDuplicateInputFolderNames], 
                                         [EWSResponseCodeType ErrorDuplicateUserIdsSpecified], 
                                         [EWSResponseCodeType ErrorEmailAddressMismatch], 
                                         [EWSResponseCodeType ErrorEventNotFound], 
                                         [EWSResponseCodeType ErrorExpiredSubscription], 
                                         [EWSResponseCodeType ErrorFolderCorrupt], 
                                         [EWSResponseCodeType ErrorFolderNotFound], 
                                         [EWSResponseCodeType ErrorFolderPropertRequestFailed], 
                                         [EWSResponseCodeType ErrorFolderSave], 
                                         [EWSResponseCodeType ErrorFolderSaveFailed], 
                                         [EWSResponseCodeType ErrorFolderSavePropertyError], 
                                         [EWSResponseCodeType ErrorFolderExists], 
                                         [EWSResponseCodeType ErrorFreeBusyGenerationFailed], 
                                         [EWSResponseCodeType ErrorGetServerSecurityDescriptorFailed], 
                                         [EWSResponseCodeType ErrorImpersonateUserDenied], 
                                         [EWSResponseCodeType ErrorImpersonationDenied], 
                                         [EWSResponseCodeType ErrorImpersonationFailed], 
                                         [EWSResponseCodeType ErrorIncorrectSchemaVersion], 
                                         [EWSResponseCodeType ErrorIncorrectUpdatePropertyCount], 
                                         [EWSResponseCodeType ErrorIndividualMailboxLimitReached], 
                                         [EWSResponseCodeType ErrorInsufficientResources], 
                                         [EWSResponseCodeType ErrorInternalServerError], 
                                         [EWSResponseCodeType ErrorInternalServerTransientError], 
                                         [EWSResponseCodeType ErrorInvalidAccessLevel], 
                                         [EWSResponseCodeType ErrorInvalidAttachmentId], 
                                         [EWSResponseCodeType ErrorInvalidAttachmentSubfilter], 
                                         [EWSResponseCodeType ErrorInvalidAttachmentSubfilterTextFilter], 
                                         [EWSResponseCodeType ErrorInvalidAuthorizationContext], 
                                         [EWSResponseCodeType ErrorInvalidChangeKey], 
                                         [EWSResponseCodeType ErrorInvalidClientSecurityContext], 
                                         [EWSResponseCodeType ErrorInvalidCompleteDate], 
                                         [EWSResponseCodeType ErrorInvalidCrossForestCredentials], 
                                         [EWSResponseCodeType ErrorInvalidDelegatePermission], 
                                         [EWSResponseCodeType ErrorInvalidDelegateUserId], 
                                         [EWSResponseCodeType ErrorInvalidExcludesRestriction], 
                                         [EWSResponseCodeType ErrorInvalidExpressionTypeForSubFilter], 
                                         [EWSResponseCodeType ErrorInvalidExtendedProperty], 
                                         [EWSResponseCodeType ErrorInvalidExtendedPropertyValue], 
                                         [EWSResponseCodeType ErrorInvalidFolderId], 
                                         [EWSResponseCodeType ErrorInvalidFolderTypeForOperation], 
                                         [EWSResponseCodeType ErrorInvalidFractionalPagingParameters], 
                                         [EWSResponseCodeType ErrorInvalidFreeBusyViewType], 
                                         [EWSResponseCodeType ErrorInvalidId], 
                                         [EWSResponseCodeType ErrorInvalidIdEmpty], 
                                         [EWSResponseCodeType ErrorInvalidIdMalformed], 
                                         [EWSResponseCodeType ErrorInvalidIdMalformedEwsLegacyIdFormat], 
                                         [EWSResponseCodeType ErrorInvalidIdMonikerTooLong], 
                                         [EWSResponseCodeType ErrorInvalidIdNotAnItemAttachmentId], 
                                         [EWSResponseCodeType ErrorInvalidIdReturnedByResolveNames], 
                                         [EWSResponseCodeType ErrorInvalidIdStoreObjectIdTooLong], 
                                         [EWSResponseCodeType ErrorInvalidIdTooManyAttachmentLevels], 
                                         [EWSResponseCodeType ErrorInvalidIdXml], 
                                         [EWSResponseCodeType ErrorInvalidIndexedPagingParameters], 
                                         [EWSResponseCodeType ErrorInvalidInternetHeaderChildNodes], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationCreateItemAttachment], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationCreateItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationAcceptItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationDeclineItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationCancelItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationExpandDL], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationRemoveItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationSendItem], 
                                         [EWSResponseCodeType ErrorInvalidItemForOperationTentative], 
                                         [EWSResponseCodeType ErrorInvalidManagedFolderProperty], 
                                         [EWSResponseCodeType ErrorInvalidManagedFolderQuota], 
                                         [EWSResponseCodeType ErrorInvalidManagedFolderSize], 
                                         [EWSResponseCodeType ErrorInvalidMergedFreeBusyInterval], 
                                         [EWSResponseCodeType ErrorInvalidNameForNameResolution], 
                                         [EWSResponseCodeType ErrorInvalidOperation], 
                                         [EWSResponseCodeType ErrorInvalidNetworkServiceContext], 
                                         [EWSResponseCodeType ErrorInvalidOofParameter], 
                                         [EWSResponseCodeType ErrorInvalidPagingMaxRows], 
                                         [EWSResponseCodeType ErrorInvalidParentFolder], 
                                         [EWSResponseCodeType ErrorInvalidPercentCompleteValue], 
                                         [EWSResponseCodeType ErrorInvalidPermissionSettings], 
                                         [EWSResponseCodeType ErrorInvalidUserInfo], 
                                         [EWSResponseCodeType ErrorInvalidPropertyAppend], 
                                         [EWSResponseCodeType ErrorInvalidPropertyDelete], 
                                         [EWSResponseCodeType ErrorInvalidPropertyForExists], 
                                         [EWSResponseCodeType ErrorInvalidPropertyForOperation], 
                                         [EWSResponseCodeType ErrorInvalidPropertyRequest], 
                                         [EWSResponseCodeType ErrorInvalidPropertySet], 
                                         [EWSResponseCodeType ErrorInvalidPropertyUpdateSentMessage], 
                                         [EWSResponseCodeType ErrorInvalidProxySecurityContext], 
                                         [EWSResponseCodeType ErrorInvalidPullSubscriptionId], 
                                         [EWSResponseCodeType ErrorInvalidPushSubscriptionUrl], 
                                         [EWSResponseCodeType ErrorInvalidRecipients], 
                                         [EWSResponseCodeType ErrorInvalidRecipientSubfilter], 
                                         [EWSResponseCodeType ErrorInvalidRecipientSubfilterComparison], 
                                         [EWSResponseCodeType ErrorInvalidRecipientSubfilterOrder], 
                                         [EWSResponseCodeType ErrorInvalidRecipientSubfilterTextFilter], 
                                         [EWSResponseCodeType ErrorInvalidReferenceItem], 
                                         [EWSResponseCodeType ErrorInvalidRequest], 
                                         [EWSResponseCodeType ErrorInvalidRestriction], 
                                         [EWSResponseCodeType ErrorInvalidRoutingType], 
                                         [EWSResponseCodeType ErrorInvalidScheduledOofDuration], 
                                         [EWSResponseCodeType ErrorInvalidSecurityDescriptor], 
                                         [EWSResponseCodeType ErrorInvalidSendItemSaveSettings], 
                                         [EWSResponseCodeType ErrorInvalidSerializedAccessToken], 
                                         [EWSResponseCodeType ErrorInvalidServerVersion], 
                                         [EWSResponseCodeType ErrorInvalidSid], 
                                         [EWSResponseCodeType ErrorInvalidSmtpAddress], 
                                         [EWSResponseCodeType ErrorInvalidSubfilterType], 
                                         [EWSResponseCodeType ErrorInvalidSubfilterTypeNotAttendeeType], 
                                         [EWSResponseCodeType ErrorInvalidSubfilterTypeNotRecipientType], 
                                         [EWSResponseCodeType ErrorInvalidSubscription], 
                                         [EWSResponseCodeType ErrorInvalidSubscriptionRequest], 
                                         [EWSResponseCodeType ErrorInvalidSyncStateData], 
                                         [EWSResponseCodeType ErrorInvalidTimeInterval], 
                                         [EWSResponseCodeType ErrorInvalidUserOofSettings], 
                                         [EWSResponseCodeType ErrorInvalidUserPrincipalName], 
                                         [EWSResponseCodeType ErrorInvalidUserSid], 
                                         [EWSResponseCodeType ErrorInvalidUserSidMissingUPN], 
                                         [EWSResponseCodeType ErrorInvalidValueForProperty], 
                                         [EWSResponseCodeType ErrorInvalidWatermark], 
                                         [EWSResponseCodeType ErrorIrresolvableConflict], 
                                         [EWSResponseCodeType ErrorItemCorrupt], 
                                         [EWSResponseCodeType ErrorItemNotFound], 
                                         [EWSResponseCodeType ErrorItemPropertyRequestFailed], 
                                         [EWSResponseCodeType ErrorItemSave], 
                                         [EWSResponseCodeType ErrorItemSavePropertyError], 
                                         [EWSResponseCodeType ErrorLegacyMailboxFreeBusyViewTypeNotMerged], 
                                         [EWSResponseCodeType ErrorLocalServerObjectNotFound], 
                                         [EWSResponseCodeType ErrorLogonAsNetworkServiceFailed], 
                                         [EWSResponseCodeType ErrorMailboxConfiguration], 
                                         [EWSResponseCodeType ErrorMailboxDataArrayEmpty], 
                                         [EWSResponseCodeType ErrorMailboxDataArrayTooBig], 
                                         [EWSResponseCodeType ErrorMailboxLogonFailed], 
                                         [EWSResponseCodeType ErrorMailboxMoveInProgress], 
                                         [EWSResponseCodeType ErrorMailboxStoreUnavailable], 
                                         [EWSResponseCodeType ErrorMailRecipientNotFound], 
                                         [EWSResponseCodeType ErrorManagedFolderAlreadyExists], 
                                         [EWSResponseCodeType ErrorManagedFolderNotFound], 
                                         [EWSResponseCodeType ErrorManagedFoldersRootFailure], 
                                         [EWSResponseCodeType ErrorMeetingSuggestionGenerationFailed], 
                                         [EWSResponseCodeType ErrorMessageDispositionRequired], 
                                         [EWSResponseCodeType ErrorMessageSizeExceeded], 
                                         [EWSResponseCodeType ErrorMimeContentConversionFailed], 
                                         [EWSResponseCodeType ErrorMimeContentInvalid], 
                                         [EWSResponseCodeType ErrorMimeContentInvalidBase64String], 
                                         [EWSResponseCodeType ErrorMissingArgument], 
                                         [EWSResponseCodeType ErrorMissingEmailAddress], 
                                         [EWSResponseCodeType ErrorMissingEmailAddressForManagedFolder], 
                                         [EWSResponseCodeType ErrorMissingInformationEmailAddress], 
                                         [EWSResponseCodeType ErrorMissingInformationReferenceItemId], 
                                         [EWSResponseCodeType ErrorMissingItemForCreateItemAttachment], 
                                         [EWSResponseCodeType ErrorMissingManagedFolderId], 
                                         [EWSResponseCodeType ErrorMissingRecipients], 
                                         [EWSResponseCodeType ErrorMissingUserIdInformation], 
                                         [EWSResponseCodeType ErrorMoreThanOneAccessModeSpecified], 
                                         [EWSResponseCodeType ErrorMoveCopyFailed], 
                                         [EWSResponseCodeType ErrorMoveDistinguishedFolder], 
                                         [EWSResponseCodeType ErrorNameResolutionMultipleResults], 
                                         [EWSResponseCodeType ErrorNameResolutionNoMailbox], 
                                         [EWSResponseCodeType ErrorNameResolutionNoResults], 
                                         [EWSResponseCodeType ErrorNoApplicableProxyCASServersAvailable], 
                                         [EWSResponseCodeType ErrorNoCalendar], 
                                         [EWSResponseCodeType ErrorNoDestinationCASDueToKerberosRequirements], 
                                         [EWSResponseCodeType ErrorNoDestinationCASDueToSSLRequirements], 
                                         [EWSResponseCodeType ErrorNoDestinationCASDueToVersionMismatch], 
                                         [EWSResponseCodeType ErrorNoFolderClassOverride], 
                                         [EWSResponseCodeType ErrorNoFreeBusyAccess], 
                                         [EWSResponseCodeType ErrorNonExistentMailbox], 
                                         [EWSResponseCodeType ErrorNonPrimarySmtpAddress], 
                                         [EWSResponseCodeType ErrorNoPropertyTagForCustomProperties], 
                                         [EWSResponseCodeType ErrorNoPublicFolderReplicaAvailable], 
                                         [EWSResponseCodeType ErrorNoRespondingCASInDestinationSite], 
                                         [EWSResponseCodeType ErrorNotDelegate], 
                                         [EWSResponseCodeType ErrorNotEnoughMemory], 
                                         [EWSResponseCodeType ErrorObjectTypeChanged], 
                                         [EWSResponseCodeType ErrorOccurrenceCrossingBoundary], 
                                         [EWSResponseCodeType ErrorOccurrenceTimeSpanTooBig], 
                                         [EWSResponseCodeType ErrorOperationNotAllowedWithPublicFolderRoot], 
                                         [EWSResponseCodeType ErrorParentFolderIdRequired], 
                                         [EWSResponseCodeType ErrorParentFolderNotFound], 
                                         [EWSResponseCodeType ErrorPasswordChangeRequired], 
                                         [EWSResponseCodeType ErrorPasswordExpired], 
                                         [EWSResponseCodeType ErrorPropertyUpdate], 
                                         [EWSResponseCodeType ErrorPropertyValidationFailure], 
                                         [EWSResponseCodeType ErrorProxiedSubscriptionCallFailure], 
                                         [EWSResponseCodeType ErrorProxyCallFailed], 
                                         [EWSResponseCodeType ErrorProxyGroupSidLimitExceeded], 
                                         [EWSResponseCodeType ErrorProxyRequestNotAllowed], 
                                         [EWSResponseCodeType ErrorProxyRequestProcessingFailed], 
                                         [EWSResponseCodeType ErrorProxyServiceDiscoveryFailed], 
                                         [EWSResponseCodeType ErrorProxyTokenExpired], 
                                         [EWSResponseCodeType ErrorPublicFolderRequestProcessingFailed], 
                                         [EWSResponseCodeType ErrorPublicFolderServerNotFound], 
                                         [EWSResponseCodeType ErrorQueryFilterTooLong], 
                                         [EWSResponseCodeType ErrorQuotaExceeded], 
                                         [EWSResponseCodeType ErrorReadEventsFailed], 
                                         [EWSResponseCodeType ErrorReadReceiptNotPending], 
                                         [EWSResponseCodeType ErrorRecurrenceEndDateTooBig], 
                                         [EWSResponseCodeType ErrorRecurrenceHasNoOccurrence], 
                                         [EWSResponseCodeType ErrorRemoveDelegatesFailed], 
                                         [EWSResponseCodeType ErrorRequestAborted], 
                                         [EWSResponseCodeType ErrorRequestStreamTooBig], 
                                         [EWSResponseCodeType ErrorRequiredPropertyMissing], 
                                         [EWSResponseCodeType ErrorResolveNamesInvalidFolderType], 
                                         [EWSResponseCodeType ErrorResolveNamesOnlyOneContactsFolderAllowed], 
                                         [EWSResponseCodeType ErrorResponseSchemaValidation], 
                                         [EWSResponseCodeType ErrorRestrictionTooLong], 
                                         [EWSResponseCodeType ErrorRestrictionTooComplex], 
                                         [EWSResponseCodeType ErrorResultSetTooBig], 
                                         [EWSResponseCodeType ErrorInvalidExchangeImpersonationHeaderData], 
                                         [EWSResponseCodeType ErrorSavedItemFolderNotFound], 
                                         [EWSResponseCodeType ErrorSchemaValidation], 
                                         [EWSResponseCodeType ErrorSearchFolderNotInitialized], 
                                         [EWSResponseCodeType ErrorSendAsDenied], 
                                         [EWSResponseCodeType ErrorSendMeetingCancellationsRequired], 
                                         [EWSResponseCodeType ErrorSendMeetingInvitationsOrCancellationsRequired], 
                                         [EWSResponseCodeType ErrorSendMeetingInvitationsRequired], 
                                         [EWSResponseCodeType ErrorSentMeetingRequestUpdate], 
                                         [EWSResponseCodeType ErrorSentTaskRequestUpdate], 
                                         [EWSResponseCodeType ErrorServerBusy], 
                                         [EWSResponseCodeType ErrorServiceDiscoveryFailed], 
                                         [EWSResponseCodeType ErrorStaleObject], 
                                         [EWSResponseCodeType ErrorSubscriptionAccessDenied], 
                                         [EWSResponseCodeType ErrorSubscriptionDelegateAccessNotSupported], 
                                         [EWSResponseCodeType ErrorSubscriptionNotFound], 
                                         [EWSResponseCodeType ErrorSyncFolderNotFound], 
                                         [EWSResponseCodeType ErrorTimeIntervalTooBig], 
                                         [EWSResponseCodeType ErrorTimeoutExpired], 
                                         [EWSResponseCodeType ErrorTimeZone], 
                                         [EWSResponseCodeType ErrorToFolderNotFound], 
                                         [EWSResponseCodeType ErrorTokenSerializationDenied], 
                                         [EWSResponseCodeType ErrorUpdatePropertyMismatch], 
                                         [EWSResponseCodeType ErrorUnableToGetUserOofSettings], 
                                         [EWSResponseCodeType ErrorUnsupportedSubFilter], 
                                         [EWSResponseCodeType ErrorUnsupportedCulture], 
                                         [EWSResponseCodeType ErrorUnsupportedMapiPropertyType], 
                                         [EWSResponseCodeType ErrorUnsupportedMimeConversion], 
                                         [EWSResponseCodeType ErrorUnsupportedPathForQuery], 
                                         [EWSResponseCodeType ErrorUnsupportedPathForSortGroup], 
                                         [EWSResponseCodeType ErrorUnsupportedPropertyDefinition], 
                                         [EWSResponseCodeType ErrorUnsupportedQueryFilter], 
                                         [EWSResponseCodeType ErrorUnsupportedRecurrence], 
                                         [EWSResponseCodeType ErrorUnsupportedTypeForConversion], 
                                         [EWSResponseCodeType ErrorUpdateDelegatesFailed], 
                                         [EWSResponseCodeType ErrorVoiceMailNotImplemented], 
                                         [EWSResponseCodeType ErrorVirusDetected], 
                                         [EWSResponseCodeType ErrorVirusMessageDeleted], 
                                         [EWSResponseCodeType ErrorWebRequestInInvalidState], 
                                         [EWSResponseCodeType ErrorWin32InteropError], 
                                         [EWSResponseCodeType ErrorWorkingHoursSaveFailed], 
                                         [EWSResponseCodeType ErrorWorkingHoursXmlMalformed], nil];
    [[[EWSResponseCodeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSResponseCodeType class]];
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

