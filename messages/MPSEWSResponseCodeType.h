#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ResponseCodeType can be one of the following:
 *       1 NoError
 *       2 ErrorAccessDenied
 *       3 ErrorAccessModeSpecified
 *       4 ErrorAccountDisabled
 *       5 ErrorAddDelegatesFailed
 *       6 ErrorAddressSpaceNotFound
 *       7 ErrorADOperation
 *       8 ErrorADSessionFilter
 *       9 ErrorADUnavailable
 *       10 ErrorAutoDiscoverFailed
 *       11 ErrorAffectedTaskOccurrencesRequired
 *       12 ErrorAttachmentNestLevelLimitExceeded
 *       13 ErrorAttachmentSizeLimitExceeded
 *       14 ErrorAvailabilityConfigNotFound
 *       15 ErrorBatchProcessingStopped
 *       16 ErrorCalendarCannotMoveOrCopyOccurrence
 *       17 ErrorCalendarCannotUpdateDeletedItem
 *       18 ErrorCalendarCannotUseIdForOccurrenceId
 *       19 ErrorCalendarCannotUseIdForRecurringMasterId
 *       20 ErrorCalendarDurationIsTooLong
 *       21 ErrorCalendarEndDateIsEarlierThanStartDate
 *       22 ErrorCalendarFolderIsInvalidForCalendarView
 *       23 ErrorCalendarInvalidAttributeValue
 *       24 ErrorCalendarInvalidDayForTimeChangePattern
 *       25 ErrorCalendarInvalidDayForWeeklyRecurrence
 *       26 ErrorCalendarInvalidPropertyState
 *       27 ErrorCalendarInvalidPropertyValue
 *       28 ErrorCalendarInvalidRecurrence
 *       29 ErrorCalendarInvalidTimeZone
 *       30 ErrorCalendarIsCancelledForAccept
 *       31 ErrorCalendarIsCancelledForDecline
 *       32 ErrorCalendarIsCancelledForRemove
 *       33 ErrorCalendarIsCancelledForTentative
 *       34 ErrorCalendarIsDelegatedForAccept
 *       35 ErrorCalendarIsDelegatedForDecline
 *       36 ErrorCalendarIsDelegatedForRemove
 *       37 ErrorCalendarIsDelegatedForTentative
 *       38 ErrorCalendarIsNotOrganizer
 *       39 ErrorCalendarIsOrganizerForAccept
 *       40 ErrorCalendarIsOrganizerForDecline
 *       41 ErrorCalendarIsOrganizerForRemove
 *       42 ErrorCalendarIsOrganizerForTentative
 *       43 ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange
 *       44 ErrorCalendarOccurrenceIsDeletedFromRecurrence
 *       45 ErrorCalendarOutOfRange
 *       46 ErrorCalendarMeetingRequestIsOutOfDate
 *       47 ErrorCalendarViewRangeTooBig
 *       48 ErrorCallerIsInvalidADAccount
 *       49 ErrorCannotCreateCalendarItemInNonCalendarFolder
 *       50 ErrorCannotCreateContactInNonContactFolder
 *       51 ErrorCannotCreatePostItemInNonMailFolder
 *       52 ErrorCannotCreateTaskInNonTaskFolder
 *       53 ErrorCannotDeleteObject
 *       54 ErrorCannotOpenFileAttachment
 *       55 ErrorCannotDeleteTaskOccurrence
 *       56 ErrorCannotEmptyFolder
 *       57 ErrorCannotSetCalendarPermissionOnNonCalendarFolder
 *       58 ErrorCannotSetNonCalendarPermissionOnCalendarFolder
 *       59 ErrorCannotSetPermissionUnknownEntries
 *       60 ErrorCannotUseFolderIdForItemId
 *       61 ErrorCannotUseItemIdForFolderId
 *       62 ErrorChangeKeyRequired
 *       63 ErrorChangeKeyRequiredForWriteOperations
 *       64 ErrorClientDisconnected
 *       65 ErrorConnectionFailed
 *       66 ErrorContainsFilterWrongType
 *       67 ErrorContentConversionFailed
 *       68 ErrorCorruptData
 *       69 ErrorCreateItemAccessDenied
 *       70 ErrorCreateManagedFolderPartialCompletion
 *       71 ErrorCreateSubfolderAccessDenied
 *       72 ErrorCrossMailboxMoveCopy
 *       73 ErrorCrossSiteRequest
 *       74 ErrorDataSizeLimitExceeded
 *       75 ErrorDataSourceOperation
 *       76 ErrorDelegateAlreadyExists
 *       77 ErrorDelegateCannotAddOwner
 *       78 ErrorDelegateMissingConfiguration
 *       79 ErrorDelegateNoUser
 *       80 ErrorDelegateValidationFailed
 *       81 ErrorDeleteDistinguishedFolder
 *       82 ErrorDeleteItemsFailed
 *       83 ErrorDistinguishedUserNotSupported
 *       84 ErrorDistributionListMemberNotExist
 *       85 ErrorDuplicateInputFolderNames
 *       86 ErrorDuplicateUserIdsSpecified
 *       87 ErrorEmailAddressMismatch
 *       88 ErrorEventNotFound
 *       89 ErrorExceededConnectionCount
 *       90 ErrorExceededSubscriptionCount
 *       91 ErrorExceededFindCountLimit
 *       92 ErrorExpiredSubscription
 *       93 ErrorFolderCorrupt
 *       94 ErrorFolderNotFound
 *       95 ErrorFolderPropertRequestFailed
 *       96 ErrorFolderSave
 *       97 ErrorFolderSaveFailed
 *       98 ErrorFolderSavePropertyError
 *       99 ErrorFolderExists
 *       100 ErrorFreeBusyGenerationFailed
 *       101 ErrorGetServerSecurityDescriptorFailed
 *       102 ErrorImpersonateUserDenied
 *       103 ErrorImpersonationDenied
 *       104 ErrorImpersonationFailed
 *       105 ErrorIncorrectSchemaVersion
 *       106 ErrorIncorrectUpdatePropertyCount
 *       107 ErrorIndividualMailboxLimitReached
 *       108 ErrorInsufficientResources
 *       109 ErrorInternalServerError
 *       110 ErrorInternalServerTransientError
 *       111 ErrorInvalidAccessLevel
 *       112 ErrorInvalidArgument
 *       113 ErrorInvalidAttachmentId
 *       114 ErrorInvalidAttachmentSubfilter
 *       115 ErrorInvalidAttachmentSubfilterTextFilter
 *       116 ErrorInvalidAuthorizationContext
 *       117 ErrorInvalidChangeKey
 *       118 ErrorInvalidClientSecurityContext
 *       119 ErrorInvalidCompleteDate
 *       120 ErrorInvalidContactEmailAddress
 *       121 ErrorInvalidContactEmailIndex
 *       122 ErrorInvalidCrossForestCredentials
 *       123 ErrorInvalidDelegatePermission
 *       124 ErrorInvalidDelegateUserId
 *       125 ErrorInvalidExcludesRestriction
 *       126 ErrorInvalidExpressionTypeForSubFilter
 *       127 ErrorInvalidExtendedProperty
 *       128 ErrorInvalidExtendedPropertyValue
 *       129 ErrorInvalidFolderId
 *       130 ErrorInvalidFolderTypeForOperation
 *       131 ErrorInvalidFractionalPagingParameters
 *       132 ErrorInvalidFreeBusyViewType
 *       133 ErrorInvalidId
 *       134 ErrorInvalidIdEmpty
 *       135 ErrorInvalidIdMalformed
 *       136 ErrorInvalidIdMalformedEwsLegacyIdFormat
 *       137 ErrorInvalidIdMonikerTooLong
 *       138 ErrorInvalidIdNotAnItemAttachmentId
 *       139 ErrorInvalidIdReturnedByResolveNames
 *       140 ErrorInvalidIdStoreObjectIdTooLong
 *       141 ErrorInvalidIdTooManyAttachmentLevels
 *       142 ErrorInvalidIdXml
 *       143 ErrorInvalidIndexedPagingParameters
 *       144 ErrorInvalidInternetHeaderChildNodes
 *       145 ErrorInvalidItemForOperationCreateItemAttachment
 *       146 ErrorInvalidItemForOperationCreateItem
 *       147 ErrorInvalidItemForOperationAcceptItem
 *       148 ErrorInvalidItemForOperationDeclineItem
 *       149 ErrorInvalidItemForOperationCancelItem
 *       150 ErrorInvalidItemForOperationExpandDL
 *       151 ErrorInvalidItemForOperationRemoveItem
 *       152 ErrorInvalidItemForOperationSendItem
 *       153 ErrorInvalidItemForOperationTentative
 *       154 ErrorInvalidLogonType
 *       155 ErrorInvalidMailbox
 *       156 ErrorInvalidManagedFolderProperty
 *       157 ErrorInvalidManagedFolderQuota
 *       158 ErrorInvalidManagedFolderSize
 *       159 ErrorInvalidMergedFreeBusyInterval
 *       160 ErrorInvalidNameForNameResolution
 *       161 ErrorInvalidOperation
 *       162 ErrorInvalidNetworkServiceContext
 *       163 ErrorInvalidOofParameter
 *       164 ErrorInvalidPagingMaxRows
 *       165 ErrorInvalidParentFolder
 *       166 ErrorInvalidPercentCompleteValue
 *       167 ErrorInvalidPermissionSettings
 *       168 ErrorInvalidPhoneCallId
 *       169 ErrorInvalidPhoneNumber
 *       170 ErrorInvalidUserInfo
 *       171 ErrorInvalidPropertyAppend
 *       172 ErrorInvalidPropertyDelete
 *       173 ErrorInvalidPropertyForExists
 *       174 ErrorInvalidPropertyForOperation
 *       175 ErrorInvalidPropertyRequest
 *       176 ErrorInvalidPropertySet
 *       177 ErrorInvalidPropertyUpdateSentMessage
 *       178 ErrorInvalidProxySecurityContext
 *       179 ErrorInvalidPullSubscriptionId
 *       180 ErrorInvalidPushSubscriptionUrl
 *       181 ErrorInvalidRecipients
 *       182 ErrorInvalidRecipientSubfilter
 *       183 ErrorInvalidRecipientSubfilterComparison
 *       184 ErrorInvalidRecipientSubfilterOrder
 *       185 ErrorInvalidRecipientSubfilterTextFilter
 *       186 ErrorInvalidReferenceItem
 *       187 ErrorInvalidRequest
 *       188 ErrorInvalidRestriction
 *       189 ErrorInvalidRoutingType
 *       190 ErrorInvalidScheduledOofDuration
 *       191 ErrorInvalidSchemaVersionForMailboxVersion
 *       192 ErrorInvalidSecurityDescriptor
 *       193 ErrorInvalidSendItemSaveSettings
 *       194 ErrorInvalidSerializedAccessToken
 *       195 ErrorInvalidServerVersion
 *       196 ErrorInvalidSid
 *       197 ErrorInvalidSIPUri
 *       198 ErrorInvalidSmtpAddress
 *       199 ErrorInvalidSubfilterType
 *       200 ErrorInvalidSubfilterTypeNotAttendeeType
 *       201 ErrorInvalidSubfilterTypeNotRecipientType
 *       202 ErrorInvalidSubscription
 *       203 ErrorInvalidSubscriptionRequest
 *       204 ErrorInvalidSyncStateData
 *       205 ErrorInvalidTimeInterval
 *       206 ErrorInvalidUserOofSettings
 *       207 ErrorInvalidUserPrincipalName
 *       208 ErrorInvalidUserSid
 *       209 ErrorInvalidUserSidMissingUPN
 *       210 ErrorInvalidValueForProperty
 *       211 ErrorInvalidWatermark
 *       212 ErrorIPGatewayNotFound
 *       213 ErrorIrresolvableConflict
 *       214 ErrorItemCorrupt
 *       215 ErrorItemNotFound
 *       216 ErrorItemPropertyRequestFailed
 *       217 ErrorItemSave
 *       218 ErrorItemSavePropertyError
 *       219 ErrorLegacyMailboxFreeBusyViewTypeNotMerged
 *       220 ErrorLocalServerObjectNotFound
 *       221 ErrorLogonAsNetworkServiceFailed
 *       222 ErrorMailboxConfiguration
 *       223 ErrorMailboxDataArrayEmpty
 *       224 ErrorMailboxDataArrayTooBig
 *       225 ErrorMailboxLogonFailed
 *       226 ErrorMailboxMoveInProgress
 *       227 ErrorMailboxStoreUnavailable
 *       228 ErrorMailRecipientNotFound
 *       229 ErrorMailTipsDisabled
 *       230 ErrorManagedFolderAlreadyExists
 *       231 ErrorManagedFolderNotFound
 *       232 ErrorManagedFoldersRootFailure
 *       233 ErrorMeetingSuggestionGenerationFailed
 *       234 ErrorMessageDispositionRequired
 *       235 ErrorMessageSizeExceeded
 *       236 ErrorMimeContentConversionFailed
 *       237 ErrorMimeContentInvalid
 *       238 ErrorMimeContentInvalidBase64String
 *       239 ErrorMissingArgument
 *       240 ErrorMissingEmailAddress
 *       241 ErrorMissingEmailAddressForManagedFolder
 *       242 ErrorMissingInformationEmailAddress
 *       243 ErrorMissingInformationReferenceItemId
 *       244 ErrorMissingItemForCreateItemAttachment
 *       245 ErrorMissingManagedFolderId
 *       246 ErrorMissingRecipients
 *       247 ErrorMissingUserIdInformation
 *       248 ErrorMoreThanOneAccessModeSpecified
 *       249 ErrorMoveCopyFailed
 *       250 ErrorMoveDistinguishedFolder
 *       251 ErrorNameResolutionMultipleResults
 *       252 ErrorNameResolutionNoMailbox
 *       253 ErrorNameResolutionNoResults
 *       254 ErrorNoApplicableProxyCASServersAvailable
 *       255 ErrorNoCalendar
 *       256 ErrorNoDestinationCASDueToKerberosRequirements
 *       257 ErrorNoDestinationCASDueToSSLRequirements
 *       258 ErrorNoDestinationCASDueToVersionMismatch
 *       259 ErrorNoFolderClassOverride
 *       260 ErrorNoFreeBusyAccess
 *       261 ErrorNonExistentMailbox
 *       262 ErrorNonPrimarySmtpAddress
 *       263 ErrorNoPropertyTagForCustomProperties
 *       264 ErrorNoPublicFolderReplicaAvailable
 *       265 ErrorNoPublicFolderServerAvailable
 *       266 ErrorNoRespondingCASInDestinationSite
 *       267 ErrorNotDelegate
 *       268 ErrorNotEnoughMemory
 *       269 ErrorObjectTypeChanged
 *       270 ErrorOccurrenceCrossingBoundary
 *       271 ErrorOccurrenceTimeSpanTooBig
 *       272 ErrorOperationNotAllowedWithPublicFolderRoot
 *       273 ErrorParentFolderIdRequired
 *       274 ErrorParentFolderNotFound
 *       275 ErrorPasswordChangeRequired
 *       276 ErrorPasswordExpired
 *       277 ErrorPhoneNumberNotDialable
 *       278 ErrorPropertyUpdate
 *       279 ErrorPropertyValidationFailure
 *       280 ErrorProxiedSubscriptionCallFailure
 *       281 ErrorProxyCallFailed
 *       282 ErrorProxyGroupSidLimitExceeded
 *       283 ErrorProxyRequestNotAllowed
 *       284 ErrorProxyRequestProcessingFailed
 *       285 ErrorProxyServiceDiscoveryFailed
 *       286 ErrorProxyTokenExpired
 *       287 ErrorPublicFolderRequestProcessingFailed
 *       288 ErrorPublicFolderServerNotFound
 *       289 ErrorQueryFilterTooLong
 *       290 ErrorQuotaExceeded
 *       291 ErrorReadEventsFailed
 *       292 ErrorReadReceiptNotPending
 *       293 ErrorRecurrenceEndDateTooBig
 *       294 ErrorRecurrenceHasNoOccurrence
 *       295 ErrorRemoveDelegatesFailed
 *       296 ErrorRequestAborted
 *       297 ErrorRequestStreamTooBig
 *       298 ErrorRequiredPropertyMissing
 *       299 ErrorResolveNamesInvalidFolderType
 *       300 ErrorResolveNamesOnlyOneContactsFolderAllowed
 *       301 ErrorResponseSchemaValidation
 *       302 ErrorRestrictionTooLong
 *       303 ErrorRestrictionTooComplex
 *       304 ErrorResultSetTooBig
 *       305 ErrorInvalidExchangeImpersonationHeaderData
 *       306 ErrorSavedItemFolderNotFound
 *       307 ErrorSchemaValidation
 *       308 ErrorSearchFolderNotInitialized
 *       309 ErrorSendAsDenied
 *       310 ErrorSendMeetingCancellationsRequired
 *       311 ErrorSendMeetingInvitationsOrCancellationsRequired
 *       312 ErrorSendMeetingInvitationsRequired
 *       313 ErrorSentMeetingRequestUpdate
 *       314 ErrorSentTaskRequestUpdate
 *       315 ErrorServerBusy
 *       316 ErrorServiceDiscoveryFailed
 *       317 ErrorStaleObject
 *       318 ErrorSubmissionQuotaExceeded
 *       319 ErrorSubscriptionAccessDenied
 *       320 ErrorSubscriptionDelegateAccessNotSupported
 *       321 ErrorSubscriptionNotFound
 *       322 ErrorSubscriptionUnsubscribed
 *       323 ErrorSyncFolderNotFound
 *       324 ErrorTimeIntervalTooBig
 *       325 ErrorTimeoutExpired
 *       326 ErrorTimeZone
 *       327 ErrorToFolderNotFound
 *       328 ErrorTokenSerializationDenied
 *       329 ErrorUpdatePropertyMismatch
 *       330 ErrorUnifiedMessagingDialPlanNotFound
 *       331 ErrorUnifiedMessagingRequestFailed
 *       332 ErrorUnifiedMessagingServerNotFound
 *       333 ErrorUnableToGetUserOofSettings
 *       334 ErrorUnsupportedSubFilter
 *       335 ErrorUnsupportedCulture
 *       336 ErrorUnsupportedMapiPropertyType
 *       337 ErrorUnsupportedMimeConversion
 *       338 ErrorUnsupportedPathForQuery
 *       339 ErrorUnsupportedPathForSortGroup
 *       340 ErrorUnsupportedPropertyDefinition
 *       341 ErrorUnsupportedQueryFilter
 *       342 ErrorUnsupportedRecurrence
 *       343 ErrorUnsupportedTypeForConversion
 *       344 ErrorUpdateDelegatesFailed
 *       345 ErrorUserNotUnifiedMessagingEnabled
 *       346 ErrorVoiceMailNotImplemented
 *       347 ErrorValueOutOfRange
 *       348 ErrorVirusDetected
 *       349 ErrorVirusMessageDeleted
 *       350 ErrorWebRequestInInvalidState
 *       351 ErrorWin32InteropError
 *       352 ErrorWorkingHoursSaveFailed
 *       353 ErrorWorkingHoursXmlMalformed
 *       354 ErrorWrongServerVersion
 *       355 ErrorWrongServerVersionDelegate
 *       356 ErrorMissingInformationSharingFolderId
 *       357 ErrorDuplicateSOAPHeader
 *       358 ErrorSharingSynchronizationFailed
 *       359 ErrorSharingNoExternalEwsAvailable
 *       360 ErrorFreeBusyDLLimitReached
 *       361 ErrorInvalidGetSharingFolderRequest
 *       362 ErrorNotAllowedExternalSharingByPolicy
 *       363 ErrorUserNotAllowedByPolicy
 *       364 ErrorPermissionNotAllowedByPolicy
 *       365 ErrorOrganizationNotFederated
 *       366 ErrorMailboxFailover
 *       367 ErrorInvalidExternalSharingInitiator
 *       368 ErrorMessageTrackingPermanentError
 *       369 ErrorMessageTrackingTransientError
 *       370 ErrorMessageTrackingNoSuchDomain
 *       371 ErrorUserWithoutFederatedProxyAddress
 *       372 ErrorInvalidOrganizationRelationshipForFreeBusy
 *       373 ErrorInvalidFederatedOrganizationId
 *       374 ErrorInvalidExternalSharingSubscriber
 *       375 ErrorInvalidSharingData
 *       376 ErrorInvalidSharingMessage
 *       377 ErrorNotSupportedSharingMessage
 *       378 ErrorApplyConversationActionFailed
 *       379 ErrorInboxRulesValidationError
 *       380 ErrorOutlookRuleBlobExists
 *       381 ErrorRulesOverQuota
 *       382 ErrorNewEventStreamConnectionOpened
 *       383 ErrorMissedNotificationEvents
 */
@interface MPSEWSResponseCodeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse ResponseCodeType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) NoError;
+ (NSString *) ErrorAccessDenied;
+ (NSString *) ErrorAccessModeSpecified;
+ (NSString *) ErrorAccountDisabled;
+ (NSString *) ErrorAddDelegatesFailed;
+ (NSString *) ErrorAddressSpaceNotFound;
+ (NSString *) ErrorADOperation;
+ (NSString *) ErrorADSessionFilter;
+ (NSString *) ErrorADUnavailable;
+ (NSString *) ErrorAutoDiscoverFailed;
+ (NSString *) ErrorAffectedTaskOccurrencesRequired;
+ (NSString *) ErrorAttachmentNestLevelLimitExceeded;
+ (NSString *) ErrorAttachmentSizeLimitExceeded;
+ (NSString *) ErrorAvailabilityConfigNotFound;
+ (NSString *) ErrorBatchProcessingStopped;
+ (NSString *) ErrorCalendarCannotMoveOrCopyOccurrence;
+ (NSString *) ErrorCalendarCannotUpdateDeletedItem;
+ (NSString *) ErrorCalendarCannotUseIdForOccurrenceId;
+ (NSString *) ErrorCalendarCannotUseIdForRecurringMasterId;
+ (NSString *) ErrorCalendarDurationIsTooLong;
+ (NSString *) ErrorCalendarEndDateIsEarlierThanStartDate;
+ (NSString *) ErrorCalendarFolderIsInvalidForCalendarView;
+ (NSString *) ErrorCalendarInvalidAttributeValue;
+ (NSString *) ErrorCalendarInvalidDayForTimeChangePattern;
+ (NSString *) ErrorCalendarInvalidDayForWeeklyRecurrence;
+ (NSString *) ErrorCalendarInvalidPropertyState;
+ (NSString *) ErrorCalendarInvalidPropertyValue;
+ (NSString *) ErrorCalendarInvalidRecurrence;
+ (NSString *) ErrorCalendarInvalidTimeZone;
+ (NSString *) ErrorCalendarIsCancelledForAccept;
+ (NSString *) ErrorCalendarIsCancelledForDecline;
+ (NSString *) ErrorCalendarIsCancelledForRemove;
+ (NSString *) ErrorCalendarIsCancelledForTentative;
+ (NSString *) ErrorCalendarIsDelegatedForAccept;
+ (NSString *) ErrorCalendarIsDelegatedForDecline;
+ (NSString *) ErrorCalendarIsDelegatedForRemove;
+ (NSString *) ErrorCalendarIsDelegatedForTentative;
+ (NSString *) ErrorCalendarIsNotOrganizer;
+ (NSString *) ErrorCalendarIsOrganizerForAccept;
+ (NSString *) ErrorCalendarIsOrganizerForDecline;
+ (NSString *) ErrorCalendarIsOrganizerForRemove;
+ (NSString *) ErrorCalendarIsOrganizerForTentative;
+ (NSString *) ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange;
+ (NSString *) ErrorCalendarOccurrenceIsDeletedFromRecurrence;
+ (NSString *) ErrorCalendarOutOfRange;
+ (NSString *) ErrorCalendarMeetingRequestIsOutOfDate;
+ (NSString *) ErrorCalendarViewRangeTooBig;
+ (NSString *) ErrorCallerIsInvalidADAccount;
+ (NSString *) ErrorCannotCreateCalendarItemInNonCalendarFolder;
+ (NSString *) ErrorCannotCreateContactInNonContactFolder;
+ (NSString *) ErrorCannotCreatePostItemInNonMailFolder;
+ (NSString *) ErrorCannotCreateTaskInNonTaskFolder;
+ (NSString *) ErrorCannotDeleteObject;
+ (NSString *) ErrorCannotOpenFileAttachment;
+ (NSString *) ErrorCannotDeleteTaskOccurrence;
+ (NSString *) ErrorCannotEmptyFolder;
+ (NSString *) ErrorCannotSetCalendarPermissionOnNonCalendarFolder;
+ (NSString *) ErrorCannotSetNonCalendarPermissionOnCalendarFolder;
+ (NSString *) ErrorCannotSetPermissionUnknownEntries;
+ (NSString *) ErrorCannotUseFolderIdForItemId;
+ (NSString *) ErrorCannotUseItemIdForFolderId;
+ (NSString *) ErrorChangeKeyRequired;
+ (NSString *) ErrorChangeKeyRequiredForWriteOperations;
+ (NSString *) ErrorClientDisconnected;
+ (NSString *) ErrorConnectionFailed;
+ (NSString *) ErrorContainsFilterWrongType;
+ (NSString *) ErrorContentConversionFailed;
+ (NSString *) ErrorCorruptData;
+ (NSString *) ErrorCreateItemAccessDenied;
+ (NSString *) ErrorCreateManagedFolderPartialCompletion;
+ (NSString *) ErrorCreateSubfolderAccessDenied;
+ (NSString *) ErrorCrossMailboxMoveCopy;
+ (NSString *) ErrorCrossSiteRequest;
+ (NSString *) ErrorDataSizeLimitExceeded;
+ (NSString *) ErrorDataSourceOperation;
+ (NSString *) ErrorDelegateAlreadyExists;
+ (NSString *) ErrorDelegateCannotAddOwner;
+ (NSString *) ErrorDelegateMissingConfiguration;
+ (NSString *) ErrorDelegateNoUser;
+ (NSString *) ErrorDelegateValidationFailed;
+ (NSString *) ErrorDeleteDistinguishedFolder;
+ (NSString *) ErrorDeleteItemsFailed;
+ (NSString *) ErrorDistinguishedUserNotSupported;
+ (NSString *) ErrorDistributionListMemberNotExist;
+ (NSString *) ErrorDuplicateInputFolderNames;
+ (NSString *) ErrorDuplicateUserIdsSpecified;
+ (NSString *) ErrorEmailAddressMismatch;
+ (NSString *) ErrorEventNotFound;
+ (NSString *) ErrorExceededConnectionCount;
+ (NSString *) ErrorExceededSubscriptionCount;
+ (NSString *) ErrorExceededFindCountLimit;
+ (NSString *) ErrorExpiredSubscription;
+ (NSString *) ErrorFolderCorrupt;
+ (NSString *) ErrorFolderNotFound;
+ (NSString *) ErrorFolderPropertRequestFailed;
+ (NSString *) ErrorFolderSave;
+ (NSString *) ErrorFolderSaveFailed;
+ (NSString *) ErrorFolderSavePropertyError;
+ (NSString *) ErrorFolderExists;
+ (NSString *) ErrorFreeBusyGenerationFailed;
+ (NSString *) ErrorGetServerSecurityDescriptorFailed;
+ (NSString *) ErrorImpersonateUserDenied;
+ (NSString *) ErrorImpersonationDenied;
+ (NSString *) ErrorImpersonationFailed;
+ (NSString *) ErrorIncorrectSchemaVersion;
+ (NSString *) ErrorIncorrectUpdatePropertyCount;
+ (NSString *) ErrorIndividualMailboxLimitReached;
+ (NSString *) ErrorInsufficientResources;
+ (NSString *) ErrorInternalServerError;
+ (NSString *) ErrorInternalServerTransientError;
+ (NSString *) ErrorInvalidAccessLevel;
+ (NSString *) ErrorInvalidArgument;
+ (NSString *) ErrorInvalidAttachmentId;
+ (NSString *) ErrorInvalidAttachmentSubfilter;
+ (NSString *) ErrorInvalidAttachmentSubfilterTextFilter;
+ (NSString *) ErrorInvalidAuthorizationContext;
+ (NSString *) ErrorInvalidChangeKey;
+ (NSString *) ErrorInvalidClientSecurityContext;
+ (NSString *) ErrorInvalidCompleteDate;
+ (NSString *) ErrorInvalidContactEmailAddress;
+ (NSString *) ErrorInvalidContactEmailIndex;
+ (NSString *) ErrorInvalidCrossForestCredentials;
+ (NSString *) ErrorInvalidDelegatePermission;
+ (NSString *) ErrorInvalidDelegateUserId;
+ (NSString *) ErrorInvalidExcludesRestriction;
+ (NSString *) ErrorInvalidExpressionTypeForSubFilter;
+ (NSString *) ErrorInvalidExtendedProperty;
+ (NSString *) ErrorInvalidExtendedPropertyValue;
+ (NSString *) ErrorInvalidFolderId;
+ (NSString *) ErrorInvalidFolderTypeForOperation;
+ (NSString *) ErrorInvalidFractionalPagingParameters;
+ (NSString *) ErrorInvalidFreeBusyViewType;
+ (NSString *) ErrorInvalidId;
+ (NSString *) ErrorInvalidIdEmpty;
+ (NSString *) ErrorInvalidIdMalformed;
+ (NSString *) ErrorInvalidIdMalformedEwsLegacyIdFormat;
+ (NSString *) ErrorInvalidIdMonikerTooLong;
+ (NSString *) ErrorInvalidIdNotAnItemAttachmentId;
+ (NSString *) ErrorInvalidIdReturnedByResolveNames;
+ (NSString *) ErrorInvalidIdStoreObjectIdTooLong;
+ (NSString *) ErrorInvalidIdTooManyAttachmentLevels;
+ (NSString *) ErrorInvalidIdXml;
+ (NSString *) ErrorInvalidIndexedPagingParameters;
+ (NSString *) ErrorInvalidInternetHeaderChildNodes;
+ (NSString *) ErrorInvalidItemForOperationCreateItemAttachment;
+ (NSString *) ErrorInvalidItemForOperationCreateItem;
+ (NSString *) ErrorInvalidItemForOperationAcceptItem;
+ (NSString *) ErrorInvalidItemForOperationDeclineItem;
+ (NSString *) ErrorInvalidItemForOperationCancelItem;
+ (NSString *) ErrorInvalidItemForOperationExpandDL;
+ (NSString *) ErrorInvalidItemForOperationRemoveItem;
+ (NSString *) ErrorInvalidItemForOperationSendItem;
+ (NSString *) ErrorInvalidItemForOperationTentative;
+ (NSString *) ErrorInvalidLogonType;
+ (NSString *) ErrorInvalidMailbox;
+ (NSString *) ErrorInvalidManagedFolderProperty;
+ (NSString *) ErrorInvalidManagedFolderQuota;
+ (NSString *) ErrorInvalidManagedFolderSize;
+ (NSString *) ErrorInvalidMergedFreeBusyInterval;
+ (NSString *) ErrorInvalidNameForNameResolution;
+ (NSString *) ErrorInvalidOperation;
+ (NSString *) ErrorInvalidNetworkServiceContext;
+ (NSString *) ErrorInvalidOofParameter;
+ (NSString *) ErrorInvalidPagingMaxRows;
+ (NSString *) ErrorInvalidParentFolder;
+ (NSString *) ErrorInvalidPercentCompleteValue;
+ (NSString *) ErrorInvalidPermissionSettings;
+ (NSString *) ErrorInvalidPhoneCallId;
+ (NSString *) ErrorInvalidPhoneNumber;
+ (NSString *) ErrorInvalidUserInfo;
+ (NSString *) ErrorInvalidPropertyAppend;
+ (NSString *) ErrorInvalidPropertyDelete;
+ (NSString *) ErrorInvalidPropertyForExists;
+ (NSString *) ErrorInvalidPropertyForOperation;
+ (NSString *) ErrorInvalidPropertyRequest;
+ (NSString *) ErrorInvalidPropertySet;
+ (NSString *) ErrorInvalidPropertyUpdateSentMessage;
+ (NSString *) ErrorInvalidProxySecurityContext;
+ (NSString *) ErrorInvalidPullSubscriptionId;
+ (NSString *) ErrorInvalidPushSubscriptionUrl;
+ (NSString *) ErrorInvalidRecipients;
+ (NSString *) ErrorInvalidRecipientSubfilter;
+ (NSString *) ErrorInvalidRecipientSubfilterComparison;
+ (NSString *) ErrorInvalidRecipientSubfilterOrder;
+ (NSString *) ErrorInvalidRecipientSubfilterTextFilter;
+ (NSString *) ErrorInvalidReferenceItem;
+ (NSString *) ErrorInvalidRequest;
+ (NSString *) ErrorInvalidRestriction;
+ (NSString *) ErrorInvalidRoutingType;
+ (NSString *) ErrorInvalidScheduledOofDuration;
+ (NSString *) ErrorInvalidSchemaVersionForMailboxVersion;
+ (NSString *) ErrorInvalidSecurityDescriptor;
+ (NSString *) ErrorInvalidSendItemSaveSettings;
+ (NSString *) ErrorInvalidSerializedAccessToken;
+ (NSString *) ErrorInvalidServerVersion;
+ (NSString *) ErrorInvalidSid;
+ (NSString *) ErrorInvalidSIPUri;
+ (NSString *) ErrorInvalidSmtpAddress;
+ (NSString *) ErrorInvalidSubfilterType;
+ (NSString *) ErrorInvalidSubfilterTypeNotAttendeeType;
+ (NSString *) ErrorInvalidSubfilterTypeNotRecipientType;
+ (NSString *) ErrorInvalidSubscription;
+ (NSString *) ErrorInvalidSubscriptionRequest;
+ (NSString *) ErrorInvalidSyncStateData;
+ (NSString *) ErrorInvalidTimeInterval;
+ (NSString *) ErrorInvalidUserOofSettings;
+ (NSString *) ErrorInvalidUserPrincipalName;
+ (NSString *) ErrorInvalidUserSid;
+ (NSString *) ErrorInvalidUserSidMissingUPN;
+ (NSString *) ErrorInvalidValueForProperty;
+ (NSString *) ErrorInvalidWatermark;
+ (NSString *) ErrorIPGatewayNotFound;
+ (NSString *) ErrorIrresolvableConflict;
+ (NSString *) ErrorItemCorrupt;
+ (NSString *) ErrorItemNotFound;
+ (NSString *) ErrorItemPropertyRequestFailed;
+ (NSString *) ErrorItemSave;
+ (NSString *) ErrorItemSavePropertyError;
+ (NSString *) ErrorLegacyMailboxFreeBusyViewTypeNotMerged;
+ (NSString *) ErrorLocalServerObjectNotFound;
+ (NSString *) ErrorLogonAsNetworkServiceFailed;
+ (NSString *) ErrorMailboxConfiguration;
+ (NSString *) ErrorMailboxDataArrayEmpty;
+ (NSString *) ErrorMailboxDataArrayTooBig;
+ (NSString *) ErrorMailboxLogonFailed;
+ (NSString *) ErrorMailboxMoveInProgress;
+ (NSString *) ErrorMailboxStoreUnavailable;
+ (NSString *) ErrorMailRecipientNotFound;
+ (NSString *) ErrorMailTipsDisabled;
+ (NSString *) ErrorManagedFolderAlreadyExists;
+ (NSString *) ErrorManagedFolderNotFound;
+ (NSString *) ErrorManagedFoldersRootFailure;
+ (NSString *) ErrorMeetingSuggestionGenerationFailed;
+ (NSString *) ErrorMessageDispositionRequired;
+ (NSString *) ErrorMessageSizeExceeded;
+ (NSString *) ErrorMimeContentConversionFailed;
+ (NSString *) ErrorMimeContentInvalid;
+ (NSString *) ErrorMimeContentInvalidBase64String;
+ (NSString *) ErrorMissingArgument;
+ (NSString *) ErrorMissingEmailAddress;
+ (NSString *) ErrorMissingEmailAddressForManagedFolder;
+ (NSString *) ErrorMissingInformationEmailAddress;
+ (NSString *) ErrorMissingInformationReferenceItemId;
+ (NSString *) ErrorMissingItemForCreateItemAttachment;
+ (NSString *) ErrorMissingManagedFolderId;
+ (NSString *) ErrorMissingRecipients;
+ (NSString *) ErrorMissingUserIdInformation;
+ (NSString *) ErrorMoreThanOneAccessModeSpecified;
+ (NSString *) ErrorMoveCopyFailed;
+ (NSString *) ErrorMoveDistinguishedFolder;
+ (NSString *) ErrorNameResolutionMultipleResults;
+ (NSString *) ErrorNameResolutionNoMailbox;
+ (NSString *) ErrorNameResolutionNoResults;
+ (NSString *) ErrorNoApplicableProxyCASServersAvailable;
+ (NSString *) ErrorNoCalendar;
+ (NSString *) ErrorNoDestinationCASDueToKerberosRequirements;
+ (NSString *) ErrorNoDestinationCASDueToSSLRequirements;
+ (NSString *) ErrorNoDestinationCASDueToVersionMismatch;
+ (NSString *) ErrorNoFolderClassOverride;
+ (NSString *) ErrorNoFreeBusyAccess;
+ (NSString *) ErrorNonExistentMailbox;
+ (NSString *) ErrorNonPrimarySmtpAddress;
+ (NSString *) ErrorNoPropertyTagForCustomProperties;
+ (NSString *) ErrorNoPublicFolderReplicaAvailable;
+ (NSString *) ErrorNoPublicFolderServerAvailable;
+ (NSString *) ErrorNoRespondingCASInDestinationSite;
+ (NSString *) ErrorNotDelegate;
+ (NSString *) ErrorNotEnoughMemory;
+ (NSString *) ErrorObjectTypeChanged;
+ (NSString *) ErrorOccurrenceCrossingBoundary;
+ (NSString *) ErrorOccurrenceTimeSpanTooBig;
+ (NSString *) ErrorOperationNotAllowedWithPublicFolderRoot;
+ (NSString *) ErrorParentFolderIdRequired;
+ (NSString *) ErrorParentFolderNotFound;
+ (NSString *) ErrorPasswordChangeRequired;
+ (NSString *) ErrorPasswordExpired;
+ (NSString *) ErrorPhoneNumberNotDialable;
+ (NSString *) ErrorPropertyUpdate;
+ (NSString *) ErrorPropertyValidationFailure;
+ (NSString *) ErrorProxiedSubscriptionCallFailure;
+ (NSString *) ErrorProxyCallFailed;
+ (NSString *) ErrorProxyGroupSidLimitExceeded;
+ (NSString *) ErrorProxyRequestNotAllowed;
+ (NSString *) ErrorProxyRequestProcessingFailed;
+ (NSString *) ErrorProxyServiceDiscoveryFailed;
+ (NSString *) ErrorProxyTokenExpired;
+ (NSString *) ErrorPublicFolderRequestProcessingFailed;
+ (NSString *) ErrorPublicFolderServerNotFound;
+ (NSString *) ErrorQueryFilterTooLong;
+ (NSString *) ErrorQuotaExceeded;
+ (NSString *) ErrorReadEventsFailed;
+ (NSString *) ErrorReadReceiptNotPending;
+ (NSString *) ErrorRecurrenceEndDateTooBig;
+ (NSString *) ErrorRecurrenceHasNoOccurrence;
+ (NSString *) ErrorRemoveDelegatesFailed;
+ (NSString *) ErrorRequestAborted;
+ (NSString *) ErrorRequestStreamTooBig;
+ (NSString *) ErrorRequiredPropertyMissing;
+ (NSString *) ErrorResolveNamesInvalidFolderType;
+ (NSString *) ErrorResolveNamesOnlyOneContactsFolderAllowed;
+ (NSString *) ErrorResponseSchemaValidation;
+ (NSString *) ErrorRestrictionTooLong;
+ (NSString *) ErrorRestrictionTooComplex;
+ (NSString *) ErrorResultSetTooBig;
+ (NSString *) ErrorInvalidExchangeImpersonationHeaderData;
+ (NSString *) ErrorSavedItemFolderNotFound;
+ (NSString *) ErrorSchemaValidation;
+ (NSString *) ErrorSearchFolderNotInitialized;
+ (NSString *) ErrorSendAsDenied;
+ (NSString *) ErrorSendMeetingCancellationsRequired;
+ (NSString *) ErrorSendMeetingInvitationsOrCancellationsRequired;
+ (NSString *) ErrorSendMeetingInvitationsRequired;
+ (NSString *) ErrorSentMeetingRequestUpdate;
+ (NSString *) ErrorSentTaskRequestUpdate;
+ (NSString *) ErrorServerBusy;
+ (NSString *) ErrorServiceDiscoveryFailed;
+ (NSString *) ErrorStaleObject;
+ (NSString *) ErrorSubmissionQuotaExceeded;
+ (NSString *) ErrorSubscriptionAccessDenied;
+ (NSString *) ErrorSubscriptionDelegateAccessNotSupported;
+ (NSString *) ErrorSubscriptionNotFound;
+ (NSString *) ErrorSubscriptionUnsubscribed;
+ (NSString *) ErrorSyncFolderNotFound;
+ (NSString *) ErrorTimeIntervalTooBig;
+ (NSString *) ErrorTimeoutExpired;
+ (NSString *) ErrorTimeZone;
+ (NSString *) ErrorToFolderNotFound;
+ (NSString *) ErrorTokenSerializationDenied;
+ (NSString *) ErrorUpdatePropertyMismatch;
+ (NSString *) ErrorUnifiedMessagingDialPlanNotFound;
+ (NSString *) ErrorUnifiedMessagingRequestFailed;
+ (NSString *) ErrorUnifiedMessagingServerNotFound;
+ (NSString *) ErrorUnableToGetUserOofSettings;
+ (NSString *) ErrorUnsupportedSubFilter;
+ (NSString *) ErrorUnsupportedCulture;
+ (NSString *) ErrorUnsupportedMapiPropertyType;
+ (NSString *) ErrorUnsupportedMimeConversion;
+ (NSString *) ErrorUnsupportedPathForQuery;
+ (NSString *) ErrorUnsupportedPathForSortGroup;
+ (NSString *) ErrorUnsupportedPropertyDefinition;
+ (NSString *) ErrorUnsupportedQueryFilter;
+ (NSString *) ErrorUnsupportedRecurrence;
+ (NSString *) ErrorUnsupportedTypeForConversion;
+ (NSString *) ErrorUpdateDelegatesFailed;
+ (NSString *) ErrorUserNotUnifiedMessagingEnabled;
+ (NSString *) ErrorVoiceMailNotImplemented;
+ (NSString *) ErrorValueOutOfRange;
+ (NSString *) ErrorVirusDetected;
+ (NSString *) ErrorVirusMessageDeleted;
+ (NSString *) ErrorWebRequestInInvalidState;
+ (NSString *) ErrorWin32InteropError;
+ (NSString *) ErrorWorkingHoursSaveFailed;
+ (NSString *) ErrorWorkingHoursXmlMalformed;
+ (NSString *) ErrorWrongServerVersion;
+ (NSString *) ErrorWrongServerVersionDelegate;
+ (NSString *) ErrorMissingInformationSharingFolderId;
+ (NSString *) ErrorDuplicateSOAPHeader;
+ (NSString *) ErrorSharingSynchronizationFailed;
+ (NSString *) ErrorSharingNoExternalEwsAvailable;
+ (NSString *) ErrorFreeBusyDLLimitReached;
+ (NSString *) ErrorInvalidGetSharingFolderRequest;
+ (NSString *) ErrorNotAllowedExternalSharingByPolicy;
+ (NSString *) ErrorUserNotAllowedByPolicy;
+ (NSString *) ErrorPermissionNotAllowedByPolicy;
+ (NSString *) ErrorOrganizationNotFederated;
+ (NSString *) ErrorMailboxFailover;
+ (NSString *) ErrorInvalidExternalSharingInitiator;
+ (NSString *) ErrorMessageTrackingPermanentError;
+ (NSString *) ErrorMessageTrackingTransientError;
+ (NSString *) ErrorMessageTrackingNoSuchDomain;
+ (NSString *) ErrorUserWithoutFederatedProxyAddress;
+ (NSString *) ErrorInvalidOrganizationRelationshipForFreeBusy;
+ (NSString *) ErrorInvalidFederatedOrganizationId;
+ (NSString *) ErrorInvalidExternalSharingSubscriber;
+ (NSString *) ErrorInvalidSharingData;
+ (NSString *) ErrorInvalidSharingMessage;
+ (NSString *) ErrorNotSupportedSharingMessage;
+ (NSString *) ErrorApplyConversationActionFailed;
+ (NSString *) ErrorInboxRulesValidationError;
+ (NSString *) ErrorOutlookRuleBlobExists;
+ (NSString *) ErrorRulesOverQuota;
+ (NSString *) ErrorNewEventStreamConnectionOpened;
+ (NSString *) ErrorMissedNotificationEvents;
@end

