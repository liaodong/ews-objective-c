#import <Foundation/Foundation.h>

#import "MPSEWSDocumentHandler.h"
#import "MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSAddDelegateResponseMessageType.h"
#import "../messages/MPSEWSAddDelegateType.h"
#import "../messages/MPSEWSApplyConversationActionResponseType.h"
#import "../messages/MPSEWSApplyConversationActionType.h"
#import "../messages/MPSEWSConvertIdResponseType.h"
#import "../messages/MPSEWSConvertIdType.h"
#import "../messages/MPSEWSCopyFolderResponseType.h"
#import "../messages/MPSEWSCopyFolderType.h"
#import "../messages/MPSEWSCopyItemResponseType.h"
#import "../messages/MPSEWSCopyItemType.h"
#import "../messages/MPSEWSCreateAttachmentResponseType.h"
#import "../messages/MPSEWSCreateAttachmentType.h"
#import "../messages/MPSEWSCreateFolderResponseType.h"
#import "../messages/MPSEWSCreateFolderType.h"
#import "../messages/MPSEWSCreateItemResponseType.h"
#import "../messages/MPSEWSCreateItemType.h"
#import "../messages/MPSEWSCreateManagedFolderRequestType.h"
#import "../messages/MPSEWSCreateManagedFolderResponseType.h"
#import "../messages/MPSEWSCreateUserConfigurationResponseType.h"
#import "../messages/MPSEWSCreateUserConfigurationType.h"
#import "../messages/MPSEWSDeleteAttachmentResponseType.h"
#import "../messages/MPSEWSDeleteAttachmentType.h"
#import "../messages/MPSEWSDeleteFolderResponseType.h"
#import "../messages/MPSEWSDeleteFolderType.h"
#import "../messages/MPSEWSDeleteItemResponseType.h"
#import "../messages/MPSEWSDeleteItemType.h"
#import "../messages/MPSEWSDeleteUserConfigurationResponseType.h"
#import "../messages/MPSEWSDeleteUserConfigurationType.h"
#import "../messages/MPSEWSDisconnectPhoneCallResponseMessageType.h"
#import "../messages/MPSEWSDisconnectPhoneCallType.h"
#import "../messages/MPSEWSEmptyFolderResponseType.h"
#import "../messages/MPSEWSEmptyFolderType.h"
#import "../messages/MPSEWSExpandDLResponseType.h"
#import "../messages/MPSEWSExpandDLType.h"
#import "../messages/MPSEWSExportItemsResponseType.h"
#import "../messages/MPSEWSExportItemsType.h"
#import "../messages/MPSEWSFindConversationResponseMessageType.h"
#import "../messages/MPSEWSFindConversationType.h"
#import "../messages/MPSEWSFindFolderResponseType.h"
#import "../messages/MPSEWSFindFolderType.h"
#import "../messages/MPSEWSFindItemResponseType.h"
#import "../messages/MPSEWSFindItemType.h"
#import "../messages/MPSEWSFindMailboxStatisticsByKeywordsResponseType.h"
#import "../messages/MPSEWSFindMailboxStatisticsByKeywordsType.h"
#import "../messages/MPSEWSFindMessageTrackingReportRequestType.h"
#import "../messages/MPSEWSFindMessageTrackingReportResponseMessageType.h"
#import "../messages/MPSEWSGetAttachmentResponseType.h"
#import "../messages/MPSEWSGetAttachmentType.h"
#import "../messages/MPSEWSGetDelegateResponseMessageType.h"
#import "../messages/MPSEWSGetDelegateType.h"
#import "../messages/MPSEWSGetEventsResponseType.h"
#import "../messages/MPSEWSGetEventsType.h"
#import "../messages/MPSEWSGetFolderResponseType.h"
#import "../messages/MPSEWSGetFolderType.h"
#import "../messages/MPSEWSGetInboxRulesRequestType.h"
#import "../messages/MPSEWSGetInboxRulesResponseType.h"
#import "../messages/MPSEWSGetItemResponseType.h"
#import "../messages/MPSEWSGetItemType.h"
#import "../messages/MPSEWSGetMailTipsResponseMessageType.h"
#import "../messages/MPSEWSGetMailTipsType.h"
#import "../messages/MPSEWSGetMessageTrackingReportRequestType.h"
#import "../messages/MPSEWSGetMessageTrackingReportResponseMessageType.h"
#import "../messages/MPSEWSGetPasswordExpirationDateResponseMessageType.h"
#import "../messages/MPSEWSGetPasswordExpirationDateType.h"
#import "../messages/MPSEWSGetPhoneCallInformationResponseMessageType.h"
#import "../messages/MPSEWSGetPhoneCallInformationType.h"
#import "../messages/MPSEWSGetRoomListsResponseMessageType.h"
#import "../messages/MPSEWSGetRoomListsType.h"
#import "../messages/MPSEWSGetRoomsResponseMessageType.h"
#import "../messages/MPSEWSGetRoomsType.h"
#import "../messages/MPSEWSGetServerTimeZonesResponseType.h"
#import "../messages/MPSEWSGetServerTimeZonesType.h"
#import "../messages/MPSEWSGetServiceConfigurationResponseMessageType.h"
#import "../messages/MPSEWSGetServiceConfigurationType.h"
#import "../messages/MPSEWSGetSharingFolderResponseMessageType.h"
#import "../messages/MPSEWSGetSharingFolderType.h"
#import "../messages/MPSEWSGetSharingMetadataResponseMessageType.h"
#import "../messages/MPSEWSGetSharingMetadataType.h"
#import "../messages/MPSEWSGetStreamingEventsResponseType.h"
#import "../messages/MPSEWSGetStreamingEventsType.h"
#import "../messages/MPSEWSGetUserAvailabilityRequestType.h"
#import "../messages/MPSEWSGetUserAvailabilityResponseType.h"
#import "../messages/MPSEWSGetUserConfigurationResponseType.h"
#import "../messages/MPSEWSGetUserConfigurationType.h"
#import "../messages/MPSEWSGetUserOofSettingsRequest.h"
#import "../messages/MPSEWSGetUserOofSettingsResponse.h"
#import "../messages/MPSEWSMoveFolderResponseType.h"
#import "../messages/MPSEWSMoveFolderType.h"
#import "../messages/MPSEWSMoveItemResponseType.h"
#import "../messages/MPSEWSMoveItemType.h"
#import "../messages/MPSEWSPlayOnPhoneResponseMessageType.h"
#import "../messages/MPSEWSPlayOnPhoneType.h"
#import "../messages/MPSEWSRefreshSharingFolderResponseMessageType.h"
#import "../messages/MPSEWSRefreshSharingFolderType.h"
#import "../messages/MPSEWSRemoveDelegateResponseMessageType.h"
#import "../messages/MPSEWSRemoveDelegateType.h"
#import "../messages/MPSEWSResolveNamesResponseType.h"
#import "../messages/MPSEWSResolveNamesType.h"
#import "../messages/MPSEWSSendItemResponseType.h"
#import "../messages/MPSEWSSendItemType.h"
#import "../messages/MPSEWSSendNotificationResponseType.h"
#import "../messages/MPSEWSSendNotificationResultType.h"
#import "../messages/MPSEWSSetUserOofSettingsRequest.h"
#import "../messages/MPSEWSSetUserOofSettingsResponse.h"
#import "../messages/MPSEWSSubscribeResponseType.h"
#import "../messages/MPSEWSSubscribeType.h"
#import "../messages/MPSEWSSyncFolderHierarchyResponseType.h"
#import "../messages/MPSEWSSyncFolderHierarchyType.h"
#import "../messages/MPSEWSSyncFolderItemsResponseType.h"
#import "../messages/MPSEWSSyncFolderItemsType.h"
#import "../messages/MPSEWSUnsubscribeResponseType.h"
#import "../messages/MPSEWSUnsubscribeType.h"
#import "../messages/MPSEWSUpdateDelegateResponseMessageType.h"
#import "../messages/MPSEWSUpdateDelegateType.h"
#import "../messages/MPSEWSUpdateFolderResponseType.h"
#import "../messages/MPSEWSUpdateFolderType.h"
#import "../messages/MPSEWSUpdateInboxRulesRequestType.h"
#import "../messages/MPSEWSUpdateInboxRulesResponseType.h"
#import "../messages/MPSEWSUpdateItemResponseType.h"
#import "../messages/MPSEWSUpdateItemType.h"
#import "../messages/MPSEWSUpdateUserConfigurationResponseType.h"
#import "../messages/MPSEWSUpdateUserConfigurationType.h"
#import "../messages/MPSEWSUploadItemsResponseType.h"
#import "../messages/MPSEWSUploadItemsType.h"
#import "../types/MPSEWSAbsoluteDateTransitionType.h"
#import "../types/MPSEWSAndType.h"
#import "../types/MPSEWSBaseItemIdType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSContainsExpressionType.h"
#import "../types/MPSEWSDateTimePrecisionType.h"
#import "../types/MPSEWSEmailAddress.h"
#import "../types/MPSEWSExchangeImpersonationType.h"
#import "../types/MPSEWSExcludesType.h"
#import "../types/MPSEWSExistsType.h"
#import "../types/MPSEWSFreeBusyViewOptionsType.h"
#import "../types/MPSEWSIsEqualToType.h"
#import "../types/MPSEWSIsGreaterThanOrEqualToType.h"
#import "../types/MPSEWSIsGreaterThanType.h"
#import "../types/MPSEWSIsLessThanOrEqualToType.h"
#import "../types/MPSEWSIsLessThanType.h"
#import "../types/MPSEWSIsNotEqualToType.h"
#import "../types/MPSEWSMailboxCultureType.h"
#import "../types/MPSEWSNotType.h"
#import "../types/MPSEWSOpenAsAdminOrSystemServiceType.h"
#import "../types/MPSEWSOrType.h"
#import "../types/MPSEWSPathToExceptionFieldType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"
#import "../types/MPSEWSPathToIndexedFieldType.h"
#import "../types/MPSEWSPathToUnindexedFieldType.h"
#import "../types/MPSEWSProxySecurityContextType.h"
#import "../types/MPSEWSRecurringDateTransitionType.h"
#import "../types/MPSEWSRecurringDayTransitionType.h"
#import "../types/MPSEWSRequestServerVersionType.h"
#import "../types/MPSEWSSearchExpressionType.h"
#import "../types/MPSEWSSerializableTimeZone.h"
#import "../types/MPSEWSSerializedSecurityContextType.h"
#import "../types/MPSEWSServerVersionInfoType.h"
#import "../types/MPSEWSSuggestionsViewOptionsType.h"
#import "../types/MPSEWSTimeZoneContextType.h"
#import "../types/MPSEWSTransitionType.h"
#import "../types/MPSEWSUserOofSettings.h"
#import "../types/MPSEWSValue.h"

@implementation MPSEWSResponse
{
}

-(id) init
{
    return [super init];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Header = %@ Body=%@", _header, _body];
}
@end

@implementation MPSEWSDocumentHandler
{
    id _result;
    MPSEWSResponse* response;
    BOOL header;
}


static NSMutableDictionary* handlersForTag; // Give a root tag, which handler (from xml to object)
static NSMutableDictionary* rootTagsForCls; // Give an object, which handler (from object to xml)

- (id) init
{
    self = [super init];
    response = [[MPSEWSResponse alloc] init];
    header   = TRUE;

    return self;
}

- (void) parser:(NSXMLParser*)parser
               didStartElement: (NSString *)elementName
               namespaceURI:    (NSString *)namespaceURI
               qualifiedName:   (NSString *)qName
               attributes:      (NSDictionary *)attributeDict
{
    NSLog(@"Start Tag %@", elementName);
    if ([namespaceURI hasPrefix:@"http://schemas.xmlsoap.org/soap/envelope"])
    {
        header = ![elementName isEqual:@"Body"];
    }
    else
    {
        [super parser:parser didStartElement: elementName namespaceURI: namespaceURI qualifiedName: qName attributes: attributeDict];
    }
}

- (void)parser:(NSXMLParser*)parser
               didEndElement:   (NSString *)elementName
               namespaceURI:    (NSString *)namespaceURI
               qualifiedName:   (NSString *)qName
{
    NSLog(@"End Tag %@", elementName);
    if ([namespaceURI hasPrefix:@"http://schemas.xmlsoap.org/soap/envelope"])
    {
    }
    else
    {
        [super parser:parser didEndElement: elementName namespaceURI: namespaceURI qualifiedName: qName];
    }
}


- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
{
    elementName = [NSString stringWithFormat:@"%c:%@", ns, elementName];

    NSAssert ([handlersForTag valueForKey:elementName], @"Can't find the handler");
    return [handlersForTag valueForKey:elementName];
}

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns
{
    NSLog(@"Setting result for %@", tag);
    if (header) {
        [response setHeader:value];
    }
    else {
        [response setBody:value];
    }
    _result = value;
}

- (MPSEWSResponse*) result
{
    return response;
}


+ (MPSEWSResponse*) toObj:(NSString*) xml
{
    MPSEWSDocumentHandler* doc = [[MPSEWSDocumentHandler alloc] init];

    NSXMLParser* parser = [[NSXMLParser alloc] initWithData:[xml dataUsingEncoding:NSUTF8StringEncoding]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];

    NSLog(@"Setting doc delegate %p", doc);
    [parser setDelegate:doc];

    [parser parse];
    return [doc result];
}

+ (void) toXml:(id) object buffer:(NSMutableString*)buffer
{
    NSMutableString* indent = nil; // [[NSMutableString alloc] init];

    NSString* root = [rootTagsForCls valueForKey:NSStringFromClass([object handlerClass])];

    id<MPSEWSHandlerProtocol> handler = [handlersForTag valueForKey:root];

    [buffer appendString:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"];
    [buffer appendString:@"<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\""];
    [buffer appendString:@" xmlns:m=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];
    [buffer appendString:@" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\""];
    [buffer appendString:@">"];
    
    [buffer appendString:@"<soap:Header><t:RequestServerVersion Version=\"Exchange2010_SP2\" /></soap:Header>"];
    [buffer appendString:@"<soap:Body>"];

    [buffer appendString:@"<"];
    [buffer appendString:root];
    [buffer appendString:@" xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];

    [handler  writeXmlInto:buffer for:object withIndentation:indent];

    [buffer appendString:@"</"];
    [buffer appendString:root];
    [buffer appendString:@">"];
    
    [buffer appendString:@"</soap:Body>"];
    [buffer appendString:@"</soap:Envelope>"];
}

+ (void) handleTag:tag withHandlerClass:(Class) cls
{
    [handlersForTag setObject:[MPSEWSHandler handlerForClass:cls] forKey:tag];
    [rootTagsForCls setObject:tag forKey:NSStringFromClass(cls)];
}

+ (void) initialize
{
    handlersForTag = [[NSMutableDictionary alloc] init];
    rootTagsForCls = [[NSMutableDictionary alloc] init];


    [MPSEWSDocumentHandler handleTag:@"m:AddDelegate" withHandlerClass:[MPSEWSAddDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:AddDelegateResponse" withHandlerClass:[MPSEWSAddDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ApplyConversationAction" withHandlerClass:[MPSEWSApplyConversationActionType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ApplyConversationActionResponse" withHandlerClass:[MPSEWSApplyConversationActionResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ConvertId" withHandlerClass:[MPSEWSConvertIdType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ConvertIdResponse" withHandlerClass:[MPSEWSConvertIdResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyFolder" withHandlerClass:[MPSEWSCopyFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyFolderResponse" withHandlerClass:[MPSEWSCopyFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyItem" withHandlerClass:[MPSEWSCopyItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyItemResponse" withHandlerClass:[MPSEWSCopyItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateAttachment" withHandlerClass:[MPSEWSCreateAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateAttachmentResponse" withHandlerClass:[MPSEWSCreateAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateFolder" withHandlerClass:[MPSEWSCreateFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateFolderResponse" withHandlerClass:[MPSEWSCreateFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateItem" withHandlerClass:[MPSEWSCreateItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateItemResponse" withHandlerClass:[MPSEWSCreateItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateManagedFolder" withHandlerClass:[MPSEWSCreateManagedFolderRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateManagedFolderResponse" withHandlerClass:[MPSEWSCreateManagedFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateUserConfiguration" withHandlerClass:[MPSEWSCreateUserConfigurationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateUserConfigurationResponse" withHandlerClass:[MPSEWSCreateUserConfigurationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteAttachment" withHandlerClass:[MPSEWSDeleteAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteAttachmentResponse" withHandlerClass:[MPSEWSDeleteAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteFolder" withHandlerClass:[MPSEWSDeleteFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteFolderResponse" withHandlerClass:[MPSEWSDeleteFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteItem" withHandlerClass:[MPSEWSDeleteItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteItemResponse" withHandlerClass:[MPSEWSDeleteItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteUserConfiguration" withHandlerClass:[MPSEWSDeleteUserConfigurationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteUserConfigurationResponse" withHandlerClass:[MPSEWSDeleteUserConfigurationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DisconnectPhoneCall" withHandlerClass:[MPSEWSDisconnectPhoneCallType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DisconnectPhoneCallResponse" withHandlerClass:[MPSEWSDisconnectPhoneCallResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:EmptyFolder" withHandlerClass:[MPSEWSEmptyFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:EmptyFolderResponse" withHandlerClass:[MPSEWSEmptyFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExpandDL" withHandlerClass:[MPSEWSExpandDLType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExpandDLResponse" withHandlerClass:[MPSEWSExpandDLResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExportItems" withHandlerClass:[MPSEWSExportItemsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExportItemsResponse" withHandlerClass:[MPSEWSExportItemsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindConversation" withHandlerClass:[MPSEWSFindConversationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindConversationResponse" withHandlerClass:[MPSEWSFindConversationResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindFolder" withHandlerClass:[MPSEWSFindFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindFolderResponse" withHandlerClass:[MPSEWSFindFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindItem" withHandlerClass:[MPSEWSFindItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindItemResponse" withHandlerClass:[MPSEWSFindItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindMailboxStatisticsByKeywords" withHandlerClass:[MPSEWSFindMailboxStatisticsByKeywordsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindMailboxStatisticsByKeywordsResponse" withHandlerClass:[MPSEWSFindMailboxStatisticsByKeywordsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindMessageTrackingReport" withHandlerClass:[MPSEWSFindMessageTrackingReportRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindMessageTrackingReportResponse" withHandlerClass:[MPSEWSFindMessageTrackingReportResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetAttachment" withHandlerClass:[MPSEWSGetAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetAttachmentResponse" withHandlerClass:[MPSEWSGetAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetDelegate" withHandlerClass:[MPSEWSGetDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetDelegateResponse" withHandlerClass:[MPSEWSGetDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetEvents" withHandlerClass:[MPSEWSGetEventsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetEventsResponse" withHandlerClass:[MPSEWSGetEventsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetFolder" withHandlerClass:[MPSEWSGetFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetFolderResponse" withHandlerClass:[MPSEWSGetFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetInboxRules" withHandlerClass:[MPSEWSGetInboxRulesRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetInboxRulesResponse" withHandlerClass:[MPSEWSGetInboxRulesResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetItem" withHandlerClass:[MPSEWSGetItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetItemResponse" withHandlerClass:[MPSEWSGetItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetMailTips" withHandlerClass:[MPSEWSGetMailTipsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetMailTipsResponse" withHandlerClass:[MPSEWSGetMailTipsResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetMessageTrackingReport" withHandlerClass:[MPSEWSGetMessageTrackingReportRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetMessageTrackingReportResponse" withHandlerClass:[MPSEWSGetMessageTrackingReportResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetPasswordExpirationDate" withHandlerClass:[MPSEWSGetPasswordExpirationDateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetPasswordExpirationDateResponse" withHandlerClass:[MPSEWSGetPasswordExpirationDateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetPhoneCallInformation" withHandlerClass:[MPSEWSGetPhoneCallInformationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetPhoneCallInformationResponse" withHandlerClass:[MPSEWSGetPhoneCallInformationResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetRoomLists" withHandlerClass:[MPSEWSGetRoomListsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetRoomListsResponse" withHandlerClass:[MPSEWSGetRoomListsResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetRooms" withHandlerClass:[MPSEWSGetRoomsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetRoomsResponse" withHandlerClass:[MPSEWSGetRoomsResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetServerTimeZones" withHandlerClass:[MPSEWSGetServerTimeZonesType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetServerTimeZonesResponse" withHandlerClass:[MPSEWSGetServerTimeZonesResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetServiceConfiguration" withHandlerClass:[MPSEWSGetServiceConfigurationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetServiceConfigurationResponse" withHandlerClass:[MPSEWSGetServiceConfigurationResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetSharingFolder" withHandlerClass:[MPSEWSGetSharingFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetSharingFolderResponse" withHandlerClass:[MPSEWSGetSharingFolderResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetSharingMetadata" withHandlerClass:[MPSEWSGetSharingMetadataType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetSharingMetadataResponse" withHandlerClass:[MPSEWSGetSharingMetadataResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetStreamingEvents" withHandlerClass:[MPSEWSGetStreamingEventsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetStreamingEventsResponse" withHandlerClass:[MPSEWSGetStreamingEventsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserAvailabilityRequest" withHandlerClass:[MPSEWSGetUserAvailabilityRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserAvailabilityResponse" withHandlerClass:[MPSEWSGetUserAvailabilityResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserConfiguration" withHandlerClass:[MPSEWSGetUserConfigurationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserConfigurationResponse" withHandlerClass:[MPSEWSGetUserConfigurationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserOofSettingsRequest" withHandlerClass:[MPSEWSGetUserOofSettingsRequest class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserOofSettingsResponse" withHandlerClass:[MPSEWSGetUserOofSettingsResponse class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveFolder" withHandlerClass:[MPSEWSMoveFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveFolderResponse" withHandlerClass:[MPSEWSMoveFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveItem" withHandlerClass:[MPSEWSMoveItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveItemResponse" withHandlerClass:[MPSEWSMoveItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:PlayOnPhone" withHandlerClass:[MPSEWSPlayOnPhoneType class]];
    [MPSEWSDocumentHandler handleTag:@"m:PlayOnPhoneResponse" withHandlerClass:[MPSEWSPlayOnPhoneResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RefreshSharingFolder" withHandlerClass:[MPSEWSRefreshSharingFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RefreshSharingFolderResponse" withHandlerClass:[MPSEWSRefreshSharingFolderResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RemoveDelegate" withHandlerClass:[MPSEWSRemoveDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RemoveDelegateResponse" withHandlerClass:[MPSEWSRemoveDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ResolveNames" withHandlerClass:[MPSEWSResolveNamesType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ResolveNamesResponse" withHandlerClass:[MPSEWSResolveNamesResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendItem" withHandlerClass:[MPSEWSSendItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendItemResponse" withHandlerClass:[MPSEWSSendItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendNotification" withHandlerClass:[MPSEWSSendNotificationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendNotificationResult" withHandlerClass:[MPSEWSSendNotificationResultType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SetUserOofSettingsRequest" withHandlerClass:[MPSEWSSetUserOofSettingsRequest class]];
    [MPSEWSDocumentHandler handleTag:@"m:SetUserOofSettingsResponse" withHandlerClass:[MPSEWSSetUserOofSettingsResponse class]];
    [MPSEWSDocumentHandler handleTag:@"m:Subscribe" withHandlerClass:[MPSEWSSubscribeType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SubscribeResponse" withHandlerClass:[MPSEWSSubscribeResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderHierarchy" withHandlerClass:[MPSEWSSyncFolderHierarchyType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderHierarchyResponse" withHandlerClass:[MPSEWSSyncFolderHierarchyResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderItems" withHandlerClass:[MPSEWSSyncFolderItemsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderItemsResponse" withHandlerClass:[MPSEWSSyncFolderItemsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:Unsubscribe" withHandlerClass:[MPSEWSUnsubscribeType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UnsubscribeResponse" withHandlerClass:[MPSEWSUnsubscribeResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateDelegate" withHandlerClass:[MPSEWSUpdateDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateDelegateResponse" withHandlerClass:[MPSEWSUpdateDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateFolder" withHandlerClass:[MPSEWSUpdateFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateFolderResponse" withHandlerClass:[MPSEWSUpdateFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateInboxRules" withHandlerClass:[MPSEWSUpdateInboxRulesRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateInboxRulesResponse" withHandlerClass:[MPSEWSUpdateInboxRulesResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateItem" withHandlerClass:[MPSEWSUpdateItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateItemResponse" withHandlerClass:[MPSEWSUpdateItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateUserConfiguration" withHandlerClass:[MPSEWSUpdateUserConfigurationType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateUserConfigurationResponse" withHandlerClass:[MPSEWSUpdateUserConfigurationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UploadItems" withHandlerClass:[MPSEWSUploadItemsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UploadItemsResponse" withHandlerClass:[MPSEWSUploadItemsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"t:AbsoluteDateTransition" withHandlerClass:[MPSEWSAbsoluteDateTransitionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:And" withHandlerClass:[MPSEWSAndType class]];
    [MPSEWSDocumentHandler handleTag:@"t:BaseItemId" withHandlerClass:[MPSEWSBaseItemIdType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Contains" withHandlerClass:[MPSEWSContainsExpressionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:DateTimePrecision" withHandlerClass:[MPSEWSDateTimePrecisionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExceptionFieldURI" withHandlerClass:[MPSEWSPathToExceptionFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExchangeImpersonation" withHandlerClass:[MPSEWSExchangeImpersonationType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Excludes" withHandlerClass:[MPSEWSExcludesType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Exists" withHandlerClass:[MPSEWSExistsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExtendedFieldURI" withHandlerClass:[MPSEWSPathToExtendedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:FieldURI" withHandlerClass:[MPSEWSPathToUnindexedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:FreeBusyViewOptions" withHandlerClass:[MPSEWSFreeBusyViewOptionsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IndexedFieldURI" withHandlerClass:[MPSEWSPathToIndexedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsEqualTo" withHandlerClass:[MPSEWSIsEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsGreaterThan" withHandlerClass:[MPSEWSIsGreaterThanType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsGreaterThanOrEqualTo" withHandlerClass:[MPSEWSIsGreaterThanOrEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsLessThan" withHandlerClass:[MPSEWSIsLessThanType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsLessThanOrEqualTo" withHandlerClass:[MPSEWSIsLessThanOrEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsNotEqualTo" withHandlerClass:[MPSEWSIsNotEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Mailbox" withHandlerClass:[MPSEWSEmailAddress class]];
    [MPSEWSDocumentHandler handleTag:@"t:MailboxCulture" withHandlerClass:[MPSEWSMailboxCultureType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Not" withHandlerClass:[MPSEWSNotType class]];
    [MPSEWSDocumentHandler handleTag:@"t:OofSettings" withHandlerClass:[MPSEWSUserOofSettings class]];
    [MPSEWSDocumentHandler handleTag:@"t:OpenAsAdminOrSystemService" withHandlerClass:[MPSEWSOpenAsAdminOrSystemServiceType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Or" withHandlerClass:[MPSEWSOrType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Path" withHandlerClass:[MPSEWSBasePathToElementType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxyPartnerToken" withHandlerClass:[MPSEWSProxySecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxySecurityContext" withHandlerClass:[MPSEWSProxySecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxySuggesterSid" withHandlerClass:[MPSEWSProxySecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:RecurringDateTransition" withHandlerClass:[MPSEWSRecurringDateTransitionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:RecurringDayTransition" withHandlerClass:[MPSEWSRecurringDayTransitionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:RequestServerVersion" withHandlerClass:[MPSEWSRequestServerVersionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:SearchExpression" withHandlerClass:[MPSEWSSearchExpressionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:SerializedSecurityContext" withHandlerClass:[MPSEWSSerializedSecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ServerVersionInfo" withHandlerClass:[MPSEWSServerVersionInfoType class]];
    [MPSEWSDocumentHandler handleTag:@"t:SharingSecurity" withHandlerClass:[MPSEWSXmlContentTypeHandler class]];
    [MPSEWSDocumentHandler handleTag:@"t:SuggestionsViewOptions" withHandlerClass:[MPSEWSSuggestionsViewOptionsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:TimeZone" withHandlerClass:[MPSEWSSerializableTimeZone class]];
    [MPSEWSDocumentHandler handleTag:@"t:TimeZoneContext" withHandlerClass:[MPSEWSTimeZoneContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Transition" withHandlerClass:[MPSEWSTransitionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:UserOofSettings" withHandlerClass:[MPSEWSUserOofSettings class]];
    [MPSEWSDocumentHandler handleTag:@"t:Value" withHandlerClass:[MPSEWSValue class]];
}

@end
