#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: ResponseCodeType can be one of the following:
 *       1 NoError
 *       2 ErrorAccessDenied
 *       3 ErrorAccountDisabled
 *       4 ErrorAddDelegatesFailed
 *       5 ErrorAddressSpaceNotFound
 *       6 ErrorADOperation
 *       7 ErrorADSessionFilter
 *       8 ErrorADUnavailable
 *       9 ErrorAutoDiscoverFailed
 *       10 ErrorAffectedTaskOccurrencesRequired
 *       11 ErrorAttachmentSizeLimitExceeded
 *       12 ErrorAvailabilityConfigNotFound
 *       13 ErrorBatchProcessingStopped
 *       14 ErrorCalendarCannotMoveOrCopyOccurrence
 *       15 ErrorCalendarCannotUpdateDeletedItem
 *       16 ErrorCalendarCannotUseIdForOccurrenceId
 *       17 ErrorCalendarCannotUseIdForRecurringMasterId
 *       18 ErrorCalendarDurationIsTooLong
 *       19 ErrorCalendarEndDateIsEarlierThanStartDate
 *       20 ErrorCalendarFolderIsInvalidForCalendarView
 *       21 ErrorCalendarInvalidAttributeValue
 *       22 ErrorCalendarInvalidDayForTimeChangePattern
 *       23 ErrorCalendarInvalidDayForWeeklyRecurrence
 *       24 ErrorCalendarInvalidPropertyState
 *       25 ErrorCalendarInvalidPropertyValue
 *       26 ErrorCalendarInvalidRecurrence
 *       27 ErrorCalendarInvalidTimeZone
 *       28 ErrorCalendarIsDelegatedForAccept
 *       29 ErrorCalendarIsDelegatedForDecline
 *       30 ErrorCalendarIsDelegatedForRemove
 *       31 ErrorCalendarIsDelegatedForTentative
 *       32 ErrorCalendarIsNotOrganizer
 *       33 ErrorCalendarIsOrganizerForAccept
 *       34 ErrorCalendarIsOrganizerForDecline
 *       35 ErrorCalendarIsOrganizerForRemove
 *       36 ErrorCalendarIsOrganizerForTentative
 *       37 ErrorCalendarOccurrenceIndexIsOutOfRecurrenceRange
 *       38 ErrorCalendarOccurrenceIsDeletedFromRecurrence
 *       39 ErrorCalendarOutOfRange
 *       40 ErrorCalendarMeetingRequestIsOutOfDate
 *       41 ErrorCalendarViewRangeTooBig
 *       42 ErrorCannotCreateCalendarItemInNonCalendarFolder
 *       43 ErrorCannotCreateContactInNonContactFolder
 *       44 ErrorCannotCreatePostItemInNonMailFolder
 *       45 ErrorCannotCreateTaskInNonTaskFolder
 *       46 ErrorCannotDeleteObject
 *       47 ErrorCannotOpenFileAttachment
 *       48 ErrorCannotDeleteTaskOccurrence
 *       49 ErrorCannotSetCalendarPermissionOnNonCalendarFolder
 *       50 ErrorCannotSetNonCalendarPermissionOnCalendarFolder
 *       51 ErrorCannotSetPermissionUnknownEntries
 *       52 ErrorCannotUseFolderIdForItemId
 *       53 ErrorCannotUseItemIdForFolderId
 *       54 ErrorChangeKeyRequired
 *       55 ErrorChangeKeyRequiredForWriteOperations
 *       56 ErrorConnectionFailed
 *       57 ErrorContentConversionFailed
 *       58 ErrorCorruptData
 *       59 ErrorCreateItemAccessDenied
 *       60 ErrorCreateManagedFolderPartialCompletion
 *       61 ErrorCreateSubfolderAccessDenied
 *       62 ErrorCrossMailboxMoveCopy
 *       63 ErrorDataSizeLimitExceeded
 *       64 ErrorDataSourceOperation
 *       65 ErrorDelegateAlreadyExists
 *       66 ErrorDelegateCannotAddOwner
 *       67 ErrorDelegateMissingConfiguration
 *       68 ErrorDelegateNoUser
 *       69 ErrorDelegateValidationFailed
 *       70 ErrorDeleteDistinguishedFolder
 *       71 ErrorDeleteItemsFailed
 *       72 ErrorDistinguishedUserNotSupported
 *       73 ErrorDuplicateInputFolderNames
 *       74 ErrorDuplicateUserIdsSpecified
 *       75 ErrorEmailAddressMismatch
 *       76 ErrorEventNotFound
 *       77 ErrorExpiredSubscription
 *       78 ErrorFolderCorrupt
 *       79 ErrorFolderNotFound
 *       80 ErrorFolderPropertRequestFailed
 *       81 ErrorFolderSave
 *       82 ErrorFolderSaveFailed
 *       83 ErrorFolderSavePropertyError
 *       84 ErrorFolderExists
 *       85 ErrorFreeBusyGenerationFailed
 *       86 ErrorGetServerSecurityDescriptorFailed
 *       87 ErrorImpersonateUserDenied
 *       88 ErrorImpersonationDenied
 *       89 ErrorImpersonationFailed
 *       90 ErrorIncorrectSchemaVersion
 *       91 ErrorIncorrectUpdatePropertyCount
 *       92 ErrorIndividualMailboxLimitReached
 *       93 ErrorInsufficientResources
 *       94 ErrorInternalServerError
 *       95 ErrorInternalServerTransientError
 *       96 ErrorInvalidAccessLevel
 *       97 ErrorInvalidAttachmentId
 *       98 ErrorInvalidAttachmentSubfilter
 *       99 ErrorInvalidAttachmentSubfilterTextFilter
 *       100 ErrorInvalidAuthorizationContext
 *       101 ErrorInvalidChangeKey
 *       102 ErrorInvalidClientSecurityContext
 *       103 ErrorInvalidCompleteDate
 *       104 ErrorInvalidCrossForestCredentials
 *       105 ErrorInvalidDelegatePermission
 *       106 ErrorInvalidDelegateUserId
 *       107 ErrorInvalidExcludesRestriction
 *       108 ErrorInvalidExpressionTypeForSubFilter
 *       109 ErrorInvalidExtendedProperty
 *       110 ErrorInvalidExtendedPropertyValue
 *       111 ErrorInvalidFolderId
 *       112 ErrorInvalidFolderTypeForOperation
 *       113 ErrorInvalidFractionalPagingParameters
 *       114 ErrorInvalidFreeBusyViewType
 *       115 ErrorInvalidId
 *       116 ErrorInvalidIdEmpty
 *       117 ErrorInvalidIdMalformed
 *       118 ErrorInvalidIdMalformedEwsLegacyIdFormat
 *       119 ErrorInvalidIdMonikerTooLong
 *       120 ErrorInvalidIdNotAnItemAttachmentId
 *       121 ErrorInvalidIdReturnedByResolveNames
 *       122 ErrorInvalidIdStoreObjectIdTooLong
 *       123 ErrorInvalidIdTooManyAttachmentLevels
 *       124 ErrorInvalidIdXml
 *       125 ErrorInvalidIndexedPagingParameters
 *       126 ErrorInvalidInternetHeaderChildNodes
 *       127 ErrorInvalidItemForOperationCreateItemAttachment
 *       128 ErrorInvalidItemForOperationCreateItem
 *       129 ErrorInvalidItemForOperationAcceptItem
 *       130 ErrorInvalidItemForOperationDeclineItem
 *       131 ErrorInvalidItemForOperationCancelItem
 *       132 ErrorInvalidItemForOperationExpandDL
 *       133 ErrorInvalidItemForOperationRemoveItem
 *       134 ErrorInvalidItemForOperationSendItem
 *       135 ErrorInvalidItemForOperationTentative
 *       136 ErrorInvalidManagedFolderProperty
 *       137 ErrorInvalidManagedFolderQuota
 *       138 ErrorInvalidManagedFolderSize
 *       139 ErrorInvalidMergedFreeBusyInterval
 *       140 ErrorInvalidNameForNameResolution
 *       141 ErrorInvalidOperation
 *       142 ErrorInvalidNetworkServiceContext
 *       143 ErrorInvalidOofParameter
 *       144 ErrorInvalidPagingMaxRows
 *       145 ErrorInvalidParentFolder
 *       146 ErrorInvalidPercentCompleteValue
 *       147 ErrorInvalidPermissionSettings
 *       148 ErrorInvalidUserInfo
 *       149 ErrorInvalidPropertyAppend
 *       150 ErrorInvalidPropertyDelete
 *       151 ErrorInvalidPropertyForExists
 *       152 ErrorInvalidPropertyForOperation
 *       153 ErrorInvalidPropertyRequest
 *       154 ErrorInvalidPropertySet
 *       155 ErrorInvalidPropertyUpdateSentMessage
 *       156 ErrorInvalidProxySecurityContext
 *       157 ErrorInvalidPullSubscriptionId
 *       158 ErrorInvalidPushSubscriptionUrl
 *       159 ErrorInvalidRecipients
 *       160 ErrorInvalidRecipientSubfilter
 *       161 ErrorInvalidRecipientSubfilterComparison
 *       162 ErrorInvalidRecipientSubfilterOrder
 *       163 ErrorInvalidRecipientSubfilterTextFilter
 *       164 ErrorInvalidReferenceItem
 *       165 ErrorInvalidRequest
 *       166 ErrorInvalidRestriction
 *       167 ErrorInvalidRoutingType
 *       168 ErrorInvalidScheduledOofDuration
 *       169 ErrorInvalidSecurityDescriptor
 *       170 ErrorInvalidSendItemSaveSettings
 *       171 ErrorInvalidSerializedAccessToken
 *       172 ErrorInvalidServerVersion
 *       173 ErrorInvalidSid
 *       174 ErrorInvalidSmtpAddress
 *       175 ErrorInvalidSubfilterType
 *       176 ErrorInvalidSubfilterTypeNotAttendeeType
 *       177 ErrorInvalidSubfilterTypeNotRecipientType
 *       178 ErrorInvalidSubscription
 *       179 ErrorInvalidSubscriptionRequest
 *       180 ErrorInvalidSyncStateData
 *       181 ErrorInvalidTimeInterval
 *       182 ErrorInvalidUserOofSettings
 *       183 ErrorInvalidUserPrincipalName
 *       184 ErrorInvalidUserSid
 *       185 ErrorInvalidUserSidMissingUPN
 *       186 ErrorInvalidValueForProperty
 *       187 ErrorInvalidWatermark
 *       188 ErrorIrresolvableConflict
 *       189 ErrorItemCorrupt
 *       190 ErrorItemNotFound
 *       191 ErrorItemPropertyRequestFailed
 *       192 ErrorItemSave
 *       193 ErrorItemSavePropertyError
 *       194 ErrorLegacyMailboxFreeBusyViewTypeNotMerged
 *       195 ErrorLocalServerObjectNotFound
 *       196 ErrorLogonAsNetworkServiceFailed
 *       197 ErrorMailboxConfiguration
 *       198 ErrorMailboxDataArrayEmpty
 *       199 ErrorMailboxDataArrayTooBig
 *       200 ErrorMailboxLogonFailed
 *       201 ErrorMailboxMoveInProgress
 *       202 ErrorMailboxStoreUnavailable
 *       203 ErrorMailRecipientNotFound
 *       204 ErrorManagedFolderAlreadyExists
 *       205 ErrorManagedFolderNotFound
 *       206 ErrorManagedFoldersRootFailure
 *       207 ErrorMeetingSuggestionGenerationFailed
 *       208 ErrorMessageDispositionRequired
 *       209 ErrorMessageSizeExceeded
 *       210 ErrorMimeContentConversionFailed
 *       211 ErrorMimeContentInvalid
 *       212 ErrorMimeContentInvalidBase64String
 *       213 ErrorMissingArgument
 *       214 ErrorMissingEmailAddress
 *       215 ErrorMissingEmailAddressForManagedFolder
 *       216 ErrorMissingInformationEmailAddress
 *       217 ErrorMissingInformationReferenceItemId
 *       218 ErrorMissingItemForCreateItemAttachment
 *       219 ErrorMissingManagedFolderId
 *       220 ErrorMissingRecipients
 *       221 ErrorMissingUserIdInformation
 *       222 ErrorMoreThanOneAccessModeSpecified
 *       223 ErrorMoveCopyFailed
 *       224 ErrorMoveDistinguishedFolder
 *       225 ErrorNameResolutionMultipleResults
 *       226 ErrorNameResolutionNoMailbox
 *       227 ErrorNameResolutionNoResults
 *       228 ErrorNoApplicableProxyCASServersAvailable
 *       229 ErrorNoCalendar
 *       230 ErrorNoDestinationCASDueToKerberosRequirements
 *       231 ErrorNoDestinationCASDueToSSLRequirements
 *       232 ErrorNoDestinationCASDueToVersionMismatch
 *       233 ErrorNoFolderClassOverride
 *       234 ErrorNoFreeBusyAccess
 *       235 ErrorNonExistentMailbox
 *       236 ErrorNonPrimarySmtpAddress
 *       237 ErrorNoPropertyTagForCustomProperties
 *       238 ErrorNoPublicFolderReplicaAvailable
 *       239 ErrorNoRespondingCASInDestinationSite
 *       240 ErrorNotDelegate
 *       241 ErrorNotEnoughMemory
 *       242 ErrorObjectTypeChanged
 *       243 ErrorOccurrenceCrossingBoundary
 *       244 ErrorOccurrenceTimeSpanTooBig
 *       245 ErrorOperationNotAllowedWithPublicFolderRoot
 *       246 ErrorParentFolderIdRequired
 *       247 ErrorParentFolderNotFound
 *       248 ErrorPasswordChangeRequired
 *       249 ErrorPasswordExpired
 *       250 ErrorPropertyUpdate
 *       251 ErrorPropertyValidationFailure
 *       252 ErrorProxiedSubscriptionCallFailure
 *       253 ErrorProxyCallFailed
 *       254 ErrorProxyGroupSidLimitExceeded
 *       255 ErrorProxyRequestNotAllowed
 *       256 ErrorProxyRequestProcessingFailed
 *       257 ErrorProxyServiceDiscoveryFailed
 *       258 ErrorProxyTokenExpired
 *       259 ErrorPublicFolderRequestProcessingFailed
 *       260 ErrorPublicFolderServerNotFound
 *       261 ErrorQueryFilterTooLong
 *       262 ErrorQuotaExceeded
 *       263 ErrorReadEventsFailed
 *       264 ErrorReadReceiptNotPending
 *       265 ErrorRecurrenceEndDateTooBig
 *       266 ErrorRecurrenceHasNoOccurrence
 *       267 ErrorRemoveDelegatesFailed
 *       268 ErrorRequestAborted
 *       269 ErrorRequestStreamTooBig
 *       270 ErrorRequiredPropertyMissing
 *       271 ErrorResolveNamesInvalidFolderType
 *       272 ErrorResolveNamesOnlyOneContactsFolderAllowed
 *       273 ErrorResponseSchemaValidation
 *       274 ErrorRestrictionTooLong
 *       275 ErrorRestrictionTooComplex
 *       276 ErrorResultSetTooBig
 *       277 ErrorInvalidExchangeImpersonationHeaderData
 *       278 ErrorSavedItemFolderNotFound
 *       279 ErrorSchemaValidation
 *       280 ErrorSearchFolderNotInitialized
 *       281 ErrorSendAsDenied
 *       282 ErrorSendMeetingCancellationsRequired
 *       283 ErrorSendMeetingInvitationsOrCancellationsRequired
 *       284 ErrorSendMeetingInvitationsRequired
 *       285 ErrorSentMeetingRequestUpdate
 *       286 ErrorSentTaskRequestUpdate
 *       287 ErrorServerBusy
 *       288 ErrorServiceDiscoveryFailed
 *       289 ErrorStaleObject
 *       290 ErrorSubscriptionAccessDenied
 *       291 ErrorSubscriptionDelegateAccessNotSupported
 *       292 ErrorSubscriptionNotFound
 *       293 ErrorSyncFolderNotFound
 *       294 ErrorTimeIntervalTooBig
 *       295 ErrorTimeoutExpired
 *       296 ErrorTimeZone
 *       297 ErrorToFolderNotFound
 *       298 ErrorTokenSerializationDenied
 *       299 ErrorUpdatePropertyMismatch
 *       300 ErrorUnableToGetUserOofSettings
 *       301 ErrorUnsupportedSubFilter
 *       302 ErrorUnsupportedCulture
 *       303 ErrorUnsupportedMapiPropertyType
 *       304 ErrorUnsupportedMimeConversion
 *       305 ErrorUnsupportedPathForQuery
 *       306 ErrorUnsupportedPathForSortGroup
 *       307 ErrorUnsupportedPropertyDefinition
 *       308 ErrorUnsupportedQueryFilter
 *       309 ErrorUnsupportedRecurrence
 *       310 ErrorUnsupportedTypeForConversion
 *       311 ErrorUpdateDelegatesFailed
 *       312 ErrorVoiceMailNotImplemented
 *       313 ErrorVirusDetected
 *       314 ErrorVirusMessageDeleted
 *       315 ErrorWebRequestInInvalidState
 *       316 ErrorWin32InteropError
 *       317 ErrorWorkingHoursSaveFailed
 *       318 ErrorWorkingHoursXmlMalformed
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
+ (NSString *) ErrorAccountDisabled;
+ (NSString *) ErrorAddDelegatesFailed;
+ (NSString *) ErrorAddressSpaceNotFound;
+ (NSString *) ErrorADOperation;
+ (NSString *) ErrorADSessionFilter;
+ (NSString *) ErrorADUnavailable;
+ (NSString *) ErrorAutoDiscoverFailed;
+ (NSString *) ErrorAffectedTaskOccurrencesRequired;
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
+ (NSString *) ErrorCannotCreateCalendarItemInNonCalendarFolder;
+ (NSString *) ErrorCannotCreateContactInNonContactFolder;
+ (NSString *) ErrorCannotCreatePostItemInNonMailFolder;
+ (NSString *) ErrorCannotCreateTaskInNonTaskFolder;
+ (NSString *) ErrorCannotDeleteObject;
+ (NSString *) ErrorCannotOpenFileAttachment;
+ (NSString *) ErrorCannotDeleteTaskOccurrence;
+ (NSString *) ErrorCannotSetCalendarPermissionOnNonCalendarFolder;
+ (NSString *) ErrorCannotSetNonCalendarPermissionOnCalendarFolder;
+ (NSString *) ErrorCannotSetPermissionUnknownEntries;
+ (NSString *) ErrorCannotUseFolderIdForItemId;
+ (NSString *) ErrorCannotUseItemIdForFolderId;
+ (NSString *) ErrorChangeKeyRequired;
+ (NSString *) ErrorChangeKeyRequiredForWriteOperations;
+ (NSString *) ErrorConnectionFailed;
+ (NSString *) ErrorContentConversionFailed;
+ (NSString *) ErrorCorruptData;
+ (NSString *) ErrorCreateItemAccessDenied;
+ (NSString *) ErrorCreateManagedFolderPartialCompletion;
+ (NSString *) ErrorCreateSubfolderAccessDenied;
+ (NSString *) ErrorCrossMailboxMoveCopy;
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
+ (NSString *) ErrorDuplicateInputFolderNames;
+ (NSString *) ErrorDuplicateUserIdsSpecified;
+ (NSString *) ErrorEmailAddressMismatch;
+ (NSString *) ErrorEventNotFound;
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
+ (NSString *) ErrorInvalidAttachmentId;
+ (NSString *) ErrorInvalidAttachmentSubfilter;
+ (NSString *) ErrorInvalidAttachmentSubfilterTextFilter;
+ (NSString *) ErrorInvalidAuthorizationContext;
+ (NSString *) ErrorInvalidChangeKey;
+ (NSString *) ErrorInvalidClientSecurityContext;
+ (NSString *) ErrorInvalidCompleteDate;
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
+ (NSString *) ErrorInvalidSecurityDescriptor;
+ (NSString *) ErrorInvalidSendItemSaveSettings;
+ (NSString *) ErrorInvalidSerializedAccessToken;
+ (NSString *) ErrorInvalidServerVersion;
+ (NSString *) ErrorInvalidSid;
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
+ (NSString *) ErrorSubscriptionAccessDenied;
+ (NSString *) ErrorSubscriptionDelegateAccessNotSupported;
+ (NSString *) ErrorSubscriptionNotFound;
+ (NSString *) ErrorSyncFolderNotFound;
+ (NSString *) ErrorTimeIntervalTooBig;
+ (NSString *) ErrorTimeoutExpired;
+ (NSString *) ErrorTimeZone;
+ (NSString *) ErrorToFolderNotFound;
+ (NSString *) ErrorTokenSerializationDenied;
+ (NSString *) ErrorUpdatePropertyMismatch;
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
+ (NSString *) ErrorVoiceMailNotImplemented;
+ (NSString *) ErrorVirusDetected;
+ (NSString *) ErrorVirusMessageDeleted;
+ (NSString *) ErrorWebRequestInInvalidState;
+ (NSString *) ErrorWin32InteropError;
+ (NSString *) ErrorWorkingHoursSaveFailed;
+ (NSString *) ErrorWorkingHoursXmlMalformed;
@end

