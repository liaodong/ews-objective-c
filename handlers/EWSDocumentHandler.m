#import <Foundation/Foundation.h>

#import "EWSDocumentHandler.h"
#import "../types/EWSSerializedSecurityContextType.h"
#import "../types/EWSExchangeImpersonationType.h"
#import "../types/EWSProxySecurityContextType.h"
#import "../types/EWSProxySecurityContextType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSPathToUnindexedFieldType.h"
#import "../types/EWSPathToIndexedFieldType.h"
#import "../types/EWSPathToExtendedFieldType.h"
#import "../types/EWSPathToExceptionFieldType.h"
#import "../types/EWSBaseItemIdType.h"
#import "../types/EWSTimeZoneContextType.h"
#import "../types/EWSSearchExpressionType.h"
#import "../types/EWSExistsType.h"
#import "../types/EWSExcludesType.h"
#import "../types/EWSIsEqualToType.h"
#import "../types/EWSIsNotEqualToType.h"
#import "../types/EWSIsGreaterThanType.h"
#import "../types/EWSIsGreaterThanOrEqualToType.h"
#import "../types/EWSIsLessThanType.h"
#import "../types/EWSIsLessThanOrEqualToType.h"
#import "../types/EWSContainsExpressionType.h"
#import "../types/EWSNotType.h"
#import "../types/EWSAndType.h"
#import "../types/EWSOrType.h"
#import "../types/EWSAvailabilityProxyRequestType.h"
#import "../types/EWSEmailAddress.h"
#import "../types/EWSFreeBusyViewOptionsType.h"
#import "../types/EWSSerializableTimeZone.h"
#import "../types/EWSSuggestionsViewOptionsType.h"
#import "../types/EWSUserOofSettings.h"
#import "../types/EWSUserOofSettings.h"
#import "../types/EWSValue.h"
#import "../messages/EWSGetFolderType.h"
#import "../messages/EWSCreateFolderType.h"
#import "../messages/EWSFindFolderType.h"
#import "../messages/EWSFindFolderResponseType.h"
#import "../messages/EWSDeleteFolderType.h"
#import "../messages/EWSDeleteFolderResponseType.h"
#import "../messages/EWSMoveFolderType.h"
#import "../messages/EWSCopyFolderType.h"
#import "../messages/EWSUpdateFolderType.h"
#import "../messages/EWSCreateFolderResponseType.h"
#import "../messages/EWSGetFolderResponseType.h"
#import "../messages/EWSUpdateFolderResponseType.h"
#import "../messages/EWSMoveFolderResponseType.h"
#import "../messages/EWSCopyFolderResponseType.h"
#import "../messages/EWSGetItemType.h"
#import "../messages/EWSCreateItemType.h"
#import "../messages/EWSUpdateItemType.h"
#import "../messages/EWSDeleteItemType.h"
#import "../messages/EWSMoveItemType.h"
#import "../messages/EWSCopyItemType.h"
#import "../messages/EWSSendItemType.h"
#import "../messages/EWSSendItemResponseType.h"
#import "../messages/EWSFindItemType.h"
#import "../messages/EWSCreateAttachmentType.h"
#import "../messages/EWSCreateAttachmentResponseType.h"
#import "../messages/EWSDeleteAttachmentType.h"
#import "../messages/EWSDeleteAttachmentResponseType.h"
#import "../messages/EWSGetAttachmentType.h"
#import "../messages/EWSGetAttachmentResponseType.h"
#import "../messages/EWSCreateItemResponseType.h"
#import "../messages/EWSUpdateItemResponseType.h"
#import "../messages/EWSGetItemResponseType.h"
#import "../messages/EWSMoveItemResponseType.h"
#import "../messages/EWSCopyItemResponseType.h"
#import "../messages/EWSDeleteItemResponseType.h"
#import "../messages/EWSFindItemResponseType.h"
#import "../messages/EWSResolveNamesType.h"
#import "../messages/EWSResolveNamesResponseType.h"
#import "../messages/EWSExpandDLType.h"
#import "../messages/EWSExpandDLResponseType.h"
#import "../messages/EWSCreateManagedFolderRequestType.h"
#import "../messages/EWSCreateManagedFolderResponseType.h"
#import "../messages/EWSSubscribeType.h"
#import "../messages/EWSSubscribeResponseType.h"
#import "../messages/EWSUnsubscribeType.h"
#import "../messages/EWSUnsubscribeResponseType.h"
#import "../messages/EWSGetEventsType.h"
#import "../messages/EWSGetEventsResponseType.h"
#import "../messages/EWSSendNotificationResponseType.h"
#import "../messages/EWSSendNotificationResultType.h"
#import "../messages/EWSSyncFolderHierarchyType.h"
#import "../messages/EWSSyncFolderHierarchyResponseType.h"
#import "../messages/EWSSyncFolderItemsType.h"
#import "../messages/EWSSyncFolderItemsResponseType.h"
#import "../messages/EWSGetUserAvailabilityRequestType.h"
#import "../messages/EWSGetUserAvailabilityResponseType.h"
#import "../messages/EWSGetUserOofSettingsRequest.h"
#import "../messages/EWSGetUserOofSettingsResponse.h"
#import "../messages/EWSSetUserOofSettingsRequest.h"
#import "../messages/EWSSetUserOofSettingsResponse.h"
#import "../messages/EWSConvertIdType.h"
#import "../messages/EWSConvertIdResponseType.h"
#import "../messages/EWSGetDelegateType.h"
#import "../messages/EWSGetDelegateResponseMessageType.h"
#import "../messages/EWSAddDelegateType.h"
#import "../messages/EWSAddDelegateResponseMessageType.h"
#import "../messages/EWSRemoveDelegateType.h"
#import "../messages/EWSRemoveDelegateResponseMessageType.h"
#import "../messages/EWSUpdateDelegateType.h"
#import "../messages/EWSUpdateDelegateResponseMessageType.h"

@implementation EWSDocumentHandler
{
    id _result;
}


static NSMutableDictionary* handlersForTag; // Give a root tag, which handler (from xml to object)
static NSMutableDictionary* rootTagsForCls; // Give an object, which handler (from object to xml)

- (id) init
{
    return [super init];
}

- (id<EWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
{
    elementName = [NSString stringWithFormat:@"%c:%@", ns, elementName];
    return [handlersForTag valueForKey:elementName];
}

- (void) populateValue:(id) value forKey: (NSString*) tag namespace:(char) ns
{
    _result = value;
}

- (id) result
{
    return _result;
}


+ (id) toObj:(NSString*) xml
{
    EWSDocumentHandler* doc = [[EWSDocumentHandler alloc] init];

    NSXMLParser* parser = [[NSXMLParser alloc] initWithData:[xml dataUsingEncoding:NSUTF8StringEncoding]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];

    [parser setDelegate:doc];

    [parser parse];
    return [doc result];
}

+ (void) toXml:(id) object buffer:(NSMutableString*)buffer
{
    NSMutableString* indent = nil; // [[NSMutableString alloc] init];

    NSString* root = [rootTagsForCls valueForKey:[[object handlerClass] className]];

    id<EWSHandlerProtocol> handler = [handlersForTag valueForKey:root];

    [buffer appendString:@"<"];
    [buffer appendString:root];
    [buffer appendString:@" xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];
    [buffer appendString:@" xmlns:m=\"http://schemas.microsoft.com/exchange/services/2006/messages\""];
    [buffer appendString:@" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\""];

    [handler  writeXmlInto:buffer for:object withIndentation:indent];

    [buffer appendString:@"</"];
    [buffer appendString:root];
    [buffer appendString:@">"];
}

+ (void) handleTag:tag withHandlerClass:(Class) cls
{
    [handlersForTag setObject:[EWSHandler handlerForClass:cls] forKey:tag];
    [rootTagsForCls setObject:tag forKey:[cls className]];
}

+ (void) initialize
{
    handlersForTag = [[NSMutableDictionary alloc] init];
    rootTagsForCls = [[NSMutableDictionary alloc] init];

    [EWSDocumentHandler handleTag:@"t:SerializedSecurityContext" withHandlerClass:[EWSSerializedSecurityContextType class]];
    [EWSDocumentHandler handleTag:@"t:ExchangeImpersonation" withHandlerClass:[EWSExchangeImpersonationType class]];
    [EWSDocumentHandler handleTag:@"t:ProxySecurityContext" withHandlerClass:[EWSProxySecurityContextType class]];
    [EWSDocumentHandler handleTag:@"t:ProxySuggesterSid" withHandlerClass:[EWSProxySecurityContextType class]];
    [EWSDocumentHandler handleTag:@"t:Path" withHandlerClass:[EWSBasePathToElementType class]];
    [EWSDocumentHandler handleTag:@"t:FieldURI" withHandlerClass:[EWSPathToUnindexedFieldType class]];
    [EWSDocumentHandler handleTag:@"t:IndexedFieldURI" withHandlerClass:[EWSPathToIndexedFieldType class]];
    [EWSDocumentHandler handleTag:@"t:ExtendedFieldURI" withHandlerClass:[EWSPathToExtendedFieldType class]];
    [EWSDocumentHandler handleTag:@"t:ExceptionFieldURI" withHandlerClass:[EWSPathToExceptionFieldType class]];
    [EWSDocumentHandler handleTag:@"t:BaseItemId" withHandlerClass:[EWSBaseItemIdType class]];
    [EWSDocumentHandler handleTag:@"t:TimeZoneContext" withHandlerClass:[EWSTimeZoneContextType class]];
    [EWSDocumentHandler handleTag:@"t:SearchExpression" withHandlerClass:[EWSSearchExpressionType class]];
    [EWSDocumentHandler handleTag:@"t:Exists" withHandlerClass:[EWSExistsType class]];
    [EWSDocumentHandler handleTag:@"t:Excludes" withHandlerClass:[EWSExcludesType class]];
    [EWSDocumentHandler handleTag:@"t:IsEqualTo" withHandlerClass:[EWSIsEqualToType class]];
    [EWSDocumentHandler handleTag:@"t:IsNotEqualTo" withHandlerClass:[EWSIsNotEqualToType class]];
    [EWSDocumentHandler handleTag:@"t:IsGreaterThan" withHandlerClass:[EWSIsGreaterThanType class]];
    [EWSDocumentHandler handleTag:@"t:IsGreaterThanOrEqualTo" withHandlerClass:[EWSIsGreaterThanOrEqualToType class]];
    [EWSDocumentHandler handleTag:@"t:IsLessThan" withHandlerClass:[EWSIsLessThanType class]];
    [EWSDocumentHandler handleTag:@"t:IsLessThanOrEqualTo" withHandlerClass:[EWSIsLessThanOrEqualToType class]];
    [EWSDocumentHandler handleTag:@"t:Contains" withHandlerClass:[EWSContainsExpressionType class]];
    [EWSDocumentHandler handleTag:@"t:Not" withHandlerClass:[EWSNotType class]];
    [EWSDocumentHandler handleTag:@"t:And" withHandlerClass:[EWSAndType class]];
    [EWSDocumentHandler handleTag:@"t:Or" withHandlerClass:[EWSOrType class]];
    [EWSDocumentHandler handleTag:@"t:ProxyRequestTypeHeader" withHandlerClass:[EWSAvailabilityProxyRequestType class]];
    [EWSDocumentHandler handleTag:@"t:Mailbox" withHandlerClass:[EWSEmailAddress class]];
    [EWSDocumentHandler handleTag:@"t:FreeBusyViewOptions" withHandlerClass:[EWSFreeBusyViewOptionsType class]];
    [EWSDocumentHandler handleTag:@"t:TimeZone" withHandlerClass:[EWSSerializableTimeZone class]];
    [EWSDocumentHandler handleTag:@"t:SuggestionsViewOptions" withHandlerClass:[EWSSuggestionsViewOptionsType class]];
    [EWSDocumentHandler handleTag:@"t:OofSettings" withHandlerClass:[EWSUserOofSettings class]];
    [EWSDocumentHandler handleTag:@"t:UserOofSettings" withHandlerClass:[EWSUserOofSettings class]];
    [EWSDocumentHandler handleTag:@"t:Value" withHandlerClass:[EWSValue class]];
    [EWSDocumentHandler handleTag:@"m:GetFolder" withHandlerClass:[EWSGetFolderType class]];
    [EWSDocumentHandler handleTag:@"m:CreateFolder" withHandlerClass:[EWSCreateFolderType class]];
    [EWSDocumentHandler handleTag:@"m:FindFolder" withHandlerClass:[EWSFindFolderType class]];
    [EWSDocumentHandler handleTag:@"m:FindFolderResponse" withHandlerClass:[EWSFindFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteFolder" withHandlerClass:[EWSDeleteFolderType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteFolderResponse" withHandlerClass:[EWSDeleteFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:MoveFolder" withHandlerClass:[EWSMoveFolderType class]];
    [EWSDocumentHandler handleTag:@"m:CopyFolder" withHandlerClass:[EWSCopyFolderType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateFolder" withHandlerClass:[EWSUpdateFolderType class]];
    [EWSDocumentHandler handleTag:@"m:CreateFolderResponse" withHandlerClass:[EWSCreateFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetFolderResponse" withHandlerClass:[EWSGetFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateFolderResponse" withHandlerClass:[EWSUpdateFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:MoveFolderResponse" withHandlerClass:[EWSMoveFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:CopyFolderResponse" withHandlerClass:[EWSCopyFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetItem" withHandlerClass:[EWSGetItemType class]];
    [EWSDocumentHandler handleTag:@"m:CreateItem" withHandlerClass:[EWSCreateItemType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateItem" withHandlerClass:[EWSUpdateItemType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteItem" withHandlerClass:[EWSDeleteItemType class]];
    [EWSDocumentHandler handleTag:@"m:MoveItem" withHandlerClass:[EWSMoveItemType class]];
    [EWSDocumentHandler handleTag:@"m:CopyItem" withHandlerClass:[EWSCopyItemType class]];
    [EWSDocumentHandler handleTag:@"m:SendItem" withHandlerClass:[EWSSendItemType class]];
    [EWSDocumentHandler handleTag:@"m:SendItemResponse" withHandlerClass:[EWSSendItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:FindItem" withHandlerClass:[EWSFindItemType class]];
    [EWSDocumentHandler handleTag:@"m:CreateAttachment" withHandlerClass:[EWSCreateAttachmentType class]];
    [EWSDocumentHandler handleTag:@"m:CreateAttachmentResponse" withHandlerClass:[EWSCreateAttachmentResponseType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteAttachment" withHandlerClass:[EWSDeleteAttachmentType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteAttachmentResponse" withHandlerClass:[EWSDeleteAttachmentResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetAttachment" withHandlerClass:[EWSGetAttachmentType class]];
    [EWSDocumentHandler handleTag:@"m:GetAttachmentResponse" withHandlerClass:[EWSGetAttachmentResponseType class]];
    [EWSDocumentHandler handleTag:@"m:CreateItemResponse" withHandlerClass:[EWSCreateItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateItemResponse" withHandlerClass:[EWSUpdateItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetItemResponse" withHandlerClass:[EWSGetItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:MoveItemResponse" withHandlerClass:[EWSMoveItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:CopyItemResponse" withHandlerClass:[EWSCopyItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:DeleteItemResponse" withHandlerClass:[EWSDeleteItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:FindItemResponse" withHandlerClass:[EWSFindItemResponseType class]];
    [EWSDocumentHandler handleTag:@"m:ResolveNames" withHandlerClass:[EWSResolveNamesType class]];
    [EWSDocumentHandler handleTag:@"m:ResolveNamesResponse" withHandlerClass:[EWSResolveNamesResponseType class]];
    [EWSDocumentHandler handleTag:@"m:ExpandDL" withHandlerClass:[EWSExpandDLType class]];
    [EWSDocumentHandler handleTag:@"m:ExpandDLResponse" withHandlerClass:[EWSExpandDLResponseType class]];
    [EWSDocumentHandler handleTag:@"m:CreateManagedFolder" withHandlerClass:[EWSCreateManagedFolderRequestType class]];
    [EWSDocumentHandler handleTag:@"m:CreateManagedFolderResponse" withHandlerClass:[EWSCreateManagedFolderResponseType class]];
    [EWSDocumentHandler handleTag:@"m:Subscribe" withHandlerClass:[EWSSubscribeType class]];
    [EWSDocumentHandler handleTag:@"m:SubscribeResponse" withHandlerClass:[EWSSubscribeResponseType class]];
    [EWSDocumentHandler handleTag:@"m:Unsubscribe" withHandlerClass:[EWSUnsubscribeType class]];
    [EWSDocumentHandler handleTag:@"m:UnsubscribeResponse" withHandlerClass:[EWSUnsubscribeResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetEvents" withHandlerClass:[EWSGetEventsType class]];
    [EWSDocumentHandler handleTag:@"m:GetEventsResponse" withHandlerClass:[EWSGetEventsResponseType class]];
    [EWSDocumentHandler handleTag:@"m:SendNotification" withHandlerClass:[EWSSendNotificationResponseType class]];
    [EWSDocumentHandler handleTag:@"m:SendNotificationResult" withHandlerClass:[EWSSendNotificationResultType class]];
    [EWSDocumentHandler handleTag:@"m:SyncFolderHierarchy" withHandlerClass:[EWSSyncFolderHierarchyType class]];
    [EWSDocumentHandler handleTag:@"m:SyncFolderHierarchyResponse" withHandlerClass:[EWSSyncFolderHierarchyResponseType class]];
    [EWSDocumentHandler handleTag:@"m:SyncFolderItems" withHandlerClass:[EWSSyncFolderItemsType class]];
    [EWSDocumentHandler handleTag:@"m:SyncFolderItemsResponse" withHandlerClass:[EWSSyncFolderItemsResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetUserAvailabilityRequest" withHandlerClass:[EWSGetUserAvailabilityRequestType class]];
    [EWSDocumentHandler handleTag:@"m:GetUserAvailabilityResponse" withHandlerClass:[EWSGetUserAvailabilityResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetUserOofSettingsRequest" withHandlerClass:[EWSGetUserOofSettingsRequest class]];
    [EWSDocumentHandler handleTag:@"m:GetUserOofSettingsResponse" withHandlerClass:[EWSGetUserOofSettingsResponse class]];
    [EWSDocumentHandler handleTag:@"m:SetUserOofSettingsRequest" withHandlerClass:[EWSSetUserOofSettingsRequest class]];
    [EWSDocumentHandler handleTag:@"m:SetUserOofSettingsResponse" withHandlerClass:[EWSSetUserOofSettingsResponse class]];
    [EWSDocumentHandler handleTag:@"m:ConvertId" withHandlerClass:[EWSConvertIdType class]];
    [EWSDocumentHandler handleTag:@"m:ConvertIdResponse" withHandlerClass:[EWSConvertIdResponseType class]];
    [EWSDocumentHandler handleTag:@"m:GetDelegate" withHandlerClass:[EWSGetDelegateType class]];
    [EWSDocumentHandler handleTag:@"m:GetDelegateResponse" withHandlerClass:[EWSGetDelegateResponseMessageType class]];
    [EWSDocumentHandler handleTag:@"m:AddDelegate" withHandlerClass:[EWSAddDelegateType class]];
    [EWSDocumentHandler handleTag:@"m:AddDelegateResponse" withHandlerClass:[EWSAddDelegateResponseMessageType class]];
    [EWSDocumentHandler handleTag:@"m:RemoveDelegate" withHandlerClass:[EWSRemoveDelegateType class]];
    [EWSDocumentHandler handleTag:@"m:RemoveDelegateResponse" withHandlerClass:[EWSRemoveDelegateResponseMessageType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateDelegate" withHandlerClass:[EWSUpdateDelegateType class]];
    [EWSDocumentHandler handleTag:@"m:UpdateDelegateResponse" withHandlerClass:[EWSUpdateDelegateResponseMessageType class]];
}

@end
