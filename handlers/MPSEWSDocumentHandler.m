#import <Foundation/Foundation.h>

#import "MPSEWSDocumentHandler.h"
#import "../types/MPSEWSSerializedSecurityContextType.h"
#import "../types/MPSEWSExchangeImpersonationType.h"
#import "../types/MPSEWSProxySecurityContextType.h"
#import "../types/MPSEWSProxySecurityContextType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSPathToUnindexedFieldType.h"
#import "../types/MPSEWSPathToIndexedFieldType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"
#import "../types/MPSEWSPathToExceptionFieldType.h"
#import "../types/MPSEWSBaseItemIdType.h"
#import "../types/MPSEWSTimeZoneContextType.h"
#import "../types/MPSEWSSearchExpressionType.h"
#import "../types/MPSEWSExistsType.h"
#import "../types/MPSEWSExcludesType.h"
#import "../types/MPSEWSIsEqualToType.h"
#import "../types/MPSEWSIsNotEqualToType.h"
#import "../types/MPSEWSIsGreaterThanType.h"
#import "../types/MPSEWSIsGreaterThanOrEqualToType.h"
#import "../types/MPSEWSIsLessThanType.h"
#import "../types/MPSEWSIsLessThanOrEqualToType.h"
#import "../types/MPSEWSContainsExpressionType.h"
#import "../types/MPSEWSNotType.h"
#import "../types/MPSEWSAndType.h"
#import "../types/MPSEWSOrType.h"
#import "../types/MPSEWSAvailabilityProxyRequestType.h"
#import "../types/MPSEWSEmailAddress.h"
#import "../types/MPSEWSFreeBusyViewOptionsType.h"
#import "../types/MPSEWSSerializableTimeZone.h"
#import "../types/MPSEWSSuggestionsViewOptionsType.h"
#import "../types/MPSEWSUserOofSettings.h"
#import "../types/MPSEWSUserOofSettings.h"
#import "../types/MPSEWSValue.h"
#import "../messages/MPSEWSGetFolderType.h"
#import "../messages/MPSEWSCreateFolderType.h"
#import "../messages/MPSEWSFindFolderType.h"
#import "../messages/MPSEWSFindFolderResponseType.h"
#import "../messages/MPSEWSDeleteFolderType.h"
#import "../messages/MPSEWSDeleteFolderResponseType.h"
#import "../messages/MPSEWSMoveFolderType.h"
#import "../messages/MPSEWSCopyFolderType.h"
#import "../messages/MPSEWSUpdateFolderType.h"
#import "../messages/MPSEWSCreateFolderResponseType.h"
#import "../messages/MPSEWSGetFolderResponseType.h"
#import "../messages/MPSEWSUpdateFolderResponseType.h"
#import "../messages/MPSEWSMoveFolderResponseType.h"
#import "../messages/MPSEWSCopyFolderResponseType.h"
#import "../messages/MPSEWSGetItemType.h"
#import "../messages/MPSEWSCreateItemType.h"
#import "../messages/MPSEWSUpdateItemType.h"
#import "../messages/MPSEWSDeleteItemType.h"
#import "../messages/MPSEWSMoveItemType.h"
#import "../messages/MPSEWSCopyItemType.h"
#import "../messages/MPSEWSSendItemType.h"
#import "../messages/MPSEWSSendItemResponseType.h"
#import "../messages/MPSEWSFindItemType.h"
#import "../messages/MPSEWSCreateAttachmentType.h"
#import "../messages/MPSEWSCreateAttachmentResponseType.h"
#import "../messages/MPSEWSDeleteAttachmentType.h"
#import "../messages/MPSEWSDeleteAttachmentResponseType.h"
#import "../messages/MPSEWSGetAttachmentType.h"
#import "../messages/MPSEWSGetAttachmentResponseType.h"
#import "../messages/MPSEWSCreateItemResponseType.h"
#import "../messages/MPSEWSUpdateItemResponseType.h"
#import "../messages/MPSEWSGetItemResponseType.h"
#import "../messages/MPSEWSMoveItemResponseType.h"
#import "../messages/MPSEWSCopyItemResponseType.h"
#import "../messages/MPSEWSDeleteItemResponseType.h"
#import "../messages/MPSEWSFindItemResponseType.h"
#import "../messages/MPSEWSResolveNamesType.h"
#import "../messages/MPSEWSResolveNamesResponseType.h"
#import "../messages/MPSEWSExpandDLType.h"
#import "../messages/MPSEWSExpandDLResponseType.h"
#import "../messages/MPSEWSCreateManagedFolderRequestType.h"
#import "../messages/MPSEWSCreateManagedFolderResponseType.h"
#import "../messages/MPSEWSSubscribeType.h"
#import "../messages/MPSEWSSubscribeResponseType.h"
#import "../messages/MPSEWSUnsubscribeType.h"
#import "../messages/MPSEWSUnsubscribeResponseType.h"
#import "../messages/MPSEWSGetEventsType.h"
#import "../messages/MPSEWSGetEventsResponseType.h"
#import "../messages/MPSEWSSendNotificationResponseType.h"
#import "../messages/MPSEWSSendNotificationResultType.h"
#import "../messages/MPSEWSSyncFolderHierarchyType.h"
#import "../messages/MPSEWSSyncFolderHierarchyResponseType.h"
#import "../messages/MPSEWSSyncFolderItemsType.h"
#import "../messages/MPSEWSSyncFolderItemsResponseType.h"
#import "../messages/MPSEWSGetUserAvailabilityRequestType.h"
#import "../messages/MPSEWSGetUserAvailabilityResponseType.h"
#import "../messages/MPSEWSGetUserOofSettingsRequest.h"
#import "../messages/MPSEWSGetUserOofSettingsResponse.h"
#import "../messages/MPSEWSSetUserOofSettingsRequest.h"
#import "../messages/MPSEWSSetUserOofSettingsResponse.h"
#import "../messages/MPSEWSConvertIdType.h"
#import "../messages/MPSEWSConvertIdResponseType.h"
#import "../messages/MPSEWSGetDelegateType.h"
#import "../messages/MPSEWSGetDelegateResponseMessageType.h"
#import "../messages/MPSEWSAddDelegateType.h"
#import "../messages/MPSEWSAddDelegateResponseMessageType.h"
#import "../messages/MPSEWSRemoveDelegateType.h"
#import "../messages/MPSEWSRemoveDelegateResponseMessageType.h"
#import "../messages/MPSEWSUpdateDelegateType.h"
#import "../messages/MPSEWSUpdateDelegateResponseMessageType.h"

@implementation MPSEWSDocumentHandler
{
    id _result;
}


static NSMutableDictionary* handlersForTag; // Give a root tag, which handler (from xml to object)
static NSMutableDictionary* rootTagsForCls; // Give an object, which handler (from object to xml)

- (id) init
{
    self = [super init];
    NSLog (@"%p", self);
    return self;
}

- (id<MPSEWSHandlerProtocol>) handlerForElementName:(NSString*) elementName namespace:(char) ns
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

    NSString* root = [rootTagsForCls valueForKey:[[object handlerClass] className]];

    id<MPSEWSHandlerProtocol> handler = [handlersForTag valueForKey:root];

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
    [handlersForTag setObject:[MPSEWSHandler handlerForClass:cls] forKey:tag];
    [rootTagsForCls setObject:tag forKey:[cls className]];
}

+ (void) initialize
{
    handlersForTag = [[NSMutableDictionary alloc] init];
    rootTagsForCls = [[NSMutableDictionary alloc] init];

    [MPSEWSDocumentHandler handleTag:@"t:SerializedSecurityContext" withHandlerClass:[MPSEWSSerializedSecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExchangeImpersonation" withHandlerClass:[MPSEWSExchangeImpersonationType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxySecurityContext" withHandlerClass:[MPSEWSProxySecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxySuggesterSid" withHandlerClass:[MPSEWSProxySecurityContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Path" withHandlerClass:[MPSEWSBasePathToElementType class]];
    [MPSEWSDocumentHandler handleTag:@"t:FieldURI" withHandlerClass:[MPSEWSPathToUnindexedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IndexedFieldURI" withHandlerClass:[MPSEWSPathToIndexedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExtendedFieldURI" withHandlerClass:[MPSEWSPathToExtendedFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ExceptionFieldURI" withHandlerClass:[MPSEWSPathToExceptionFieldType class]];
    [MPSEWSDocumentHandler handleTag:@"t:BaseItemId" withHandlerClass:[MPSEWSBaseItemIdType class]];
    [MPSEWSDocumentHandler handleTag:@"t:TimeZoneContext" withHandlerClass:[MPSEWSTimeZoneContextType class]];
    [MPSEWSDocumentHandler handleTag:@"t:SearchExpression" withHandlerClass:[MPSEWSSearchExpressionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Exists" withHandlerClass:[MPSEWSExistsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Excludes" withHandlerClass:[MPSEWSExcludesType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsEqualTo" withHandlerClass:[MPSEWSIsEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsNotEqualTo" withHandlerClass:[MPSEWSIsNotEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsGreaterThan" withHandlerClass:[MPSEWSIsGreaterThanType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsGreaterThanOrEqualTo" withHandlerClass:[MPSEWSIsGreaterThanOrEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsLessThan" withHandlerClass:[MPSEWSIsLessThanType class]];
    [MPSEWSDocumentHandler handleTag:@"t:IsLessThanOrEqualTo" withHandlerClass:[MPSEWSIsLessThanOrEqualToType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Contains" withHandlerClass:[MPSEWSContainsExpressionType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Not" withHandlerClass:[MPSEWSNotType class]];
    [MPSEWSDocumentHandler handleTag:@"t:And" withHandlerClass:[MPSEWSAndType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Or" withHandlerClass:[MPSEWSOrType class]];
    [MPSEWSDocumentHandler handleTag:@"t:ProxyRequestTypeHeader" withHandlerClass:[MPSEWSAvailabilityProxyRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"t:Mailbox" withHandlerClass:[MPSEWSEmailAddress class]];
    [MPSEWSDocumentHandler handleTag:@"t:FreeBusyViewOptions" withHandlerClass:[MPSEWSFreeBusyViewOptionsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:TimeZone" withHandlerClass:[MPSEWSSerializableTimeZone class]];
    [MPSEWSDocumentHandler handleTag:@"t:SuggestionsViewOptions" withHandlerClass:[MPSEWSSuggestionsViewOptionsType class]];
    [MPSEWSDocumentHandler handleTag:@"t:OofSettings" withHandlerClass:[MPSEWSUserOofSettings class]];
    [MPSEWSDocumentHandler handleTag:@"t:UserOofSettings" withHandlerClass:[MPSEWSUserOofSettings class]];
    [MPSEWSDocumentHandler handleTag:@"t:Value" withHandlerClass:[MPSEWSValue class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetFolder" withHandlerClass:[MPSEWSGetFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateFolder" withHandlerClass:[MPSEWSCreateFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindFolder" withHandlerClass:[MPSEWSFindFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindFolderResponse" withHandlerClass:[MPSEWSFindFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteFolder" withHandlerClass:[MPSEWSDeleteFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteFolderResponse" withHandlerClass:[MPSEWSDeleteFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveFolder" withHandlerClass:[MPSEWSMoveFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyFolder" withHandlerClass:[MPSEWSCopyFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateFolder" withHandlerClass:[MPSEWSUpdateFolderType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateFolderResponse" withHandlerClass:[MPSEWSCreateFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetFolderResponse" withHandlerClass:[MPSEWSGetFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateFolderResponse" withHandlerClass:[MPSEWSUpdateFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveFolderResponse" withHandlerClass:[MPSEWSMoveFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyFolderResponse" withHandlerClass:[MPSEWSCopyFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetItem" withHandlerClass:[MPSEWSGetItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateItem" withHandlerClass:[MPSEWSCreateItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateItem" withHandlerClass:[MPSEWSUpdateItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteItem" withHandlerClass:[MPSEWSDeleteItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveItem" withHandlerClass:[MPSEWSMoveItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyItem" withHandlerClass:[MPSEWSCopyItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendItem" withHandlerClass:[MPSEWSSendItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendItemResponse" withHandlerClass:[MPSEWSSendItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindItem" withHandlerClass:[MPSEWSFindItemType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateAttachment" withHandlerClass:[MPSEWSCreateAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateAttachmentResponse" withHandlerClass:[MPSEWSCreateAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteAttachment" withHandlerClass:[MPSEWSDeleteAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteAttachmentResponse" withHandlerClass:[MPSEWSDeleteAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetAttachment" withHandlerClass:[MPSEWSGetAttachmentType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetAttachmentResponse" withHandlerClass:[MPSEWSGetAttachmentResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateItemResponse" withHandlerClass:[MPSEWSCreateItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateItemResponse" withHandlerClass:[MPSEWSUpdateItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetItemResponse" withHandlerClass:[MPSEWSGetItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:MoveItemResponse" withHandlerClass:[MPSEWSMoveItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CopyItemResponse" withHandlerClass:[MPSEWSCopyItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:DeleteItemResponse" withHandlerClass:[MPSEWSDeleteItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:FindItemResponse" withHandlerClass:[MPSEWSFindItemResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ResolveNames" withHandlerClass:[MPSEWSResolveNamesType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ResolveNamesResponse" withHandlerClass:[MPSEWSResolveNamesResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExpandDL" withHandlerClass:[MPSEWSExpandDLType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ExpandDLResponse" withHandlerClass:[MPSEWSExpandDLResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateManagedFolder" withHandlerClass:[MPSEWSCreateManagedFolderRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:CreateManagedFolderResponse" withHandlerClass:[MPSEWSCreateManagedFolderResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:Subscribe" withHandlerClass:[MPSEWSSubscribeType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SubscribeResponse" withHandlerClass:[MPSEWSSubscribeResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:Unsubscribe" withHandlerClass:[MPSEWSUnsubscribeType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UnsubscribeResponse" withHandlerClass:[MPSEWSUnsubscribeResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetEvents" withHandlerClass:[MPSEWSGetEventsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetEventsResponse" withHandlerClass:[MPSEWSGetEventsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendNotification" withHandlerClass:[MPSEWSSendNotificationResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SendNotificationResult" withHandlerClass:[MPSEWSSendNotificationResultType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderHierarchy" withHandlerClass:[MPSEWSSyncFolderHierarchyType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderHierarchyResponse" withHandlerClass:[MPSEWSSyncFolderHierarchyResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderItems" withHandlerClass:[MPSEWSSyncFolderItemsType class]];
    [MPSEWSDocumentHandler handleTag:@"m:SyncFolderItemsResponse" withHandlerClass:[MPSEWSSyncFolderItemsResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserAvailabilityRequest" withHandlerClass:[MPSEWSGetUserAvailabilityRequestType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserAvailabilityResponse" withHandlerClass:[MPSEWSGetUserAvailabilityResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserOofSettingsRequest" withHandlerClass:[MPSEWSGetUserOofSettingsRequest class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetUserOofSettingsResponse" withHandlerClass:[MPSEWSGetUserOofSettingsResponse class]];
    [MPSEWSDocumentHandler handleTag:@"m:SetUserOofSettingsRequest" withHandlerClass:[MPSEWSSetUserOofSettingsRequest class]];
    [MPSEWSDocumentHandler handleTag:@"m:SetUserOofSettingsResponse" withHandlerClass:[MPSEWSSetUserOofSettingsResponse class]];
    [MPSEWSDocumentHandler handleTag:@"m:ConvertId" withHandlerClass:[MPSEWSConvertIdType class]];
    [MPSEWSDocumentHandler handleTag:@"m:ConvertIdResponse" withHandlerClass:[MPSEWSConvertIdResponseType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetDelegate" withHandlerClass:[MPSEWSGetDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:GetDelegateResponse" withHandlerClass:[MPSEWSGetDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:AddDelegate" withHandlerClass:[MPSEWSAddDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:AddDelegateResponse" withHandlerClass:[MPSEWSAddDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RemoveDelegate" withHandlerClass:[MPSEWSRemoveDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:RemoveDelegateResponse" withHandlerClass:[MPSEWSRemoveDelegateResponseMessageType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateDelegate" withHandlerClass:[MPSEWSUpdateDelegateType class]];
    [MPSEWSDocumentHandler handleTag:@"m:UpdateDelegateResponse" withHandlerClass:[MPSEWSUpdateDelegateResponseMessageType class]];
}

@end
