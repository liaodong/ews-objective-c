#import <Foundation/Foundation.h>
#import "Generator.h"
#import "handlers/MPSEWSDocumentHandler.h"
#import "messages/MPSEWSGetFolderType.h"
#import "types/MPSEWSFolderResponseShapeType.h"
#import "types/MPSEWSDistinguishedFolderIdType.h"
#import "types/MPSEWSDistinguishedFolderIdNameType.h"
#import "types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"

int main (int argc, const char* argv[]) {
    MPSEWSGetFolderType * folderTypObj = [[MPSEWSGetFolderType alloc] init];
    MPSEWSFolderResponseShapeType * folderShape = [[MPSEWSFolderResponseShapeType alloc] init];
    folderShape.baseShape = @"IdOnly";
    
    folderTypObj.folderShape = folderShape;
    
    MPSEWSDistinguishedFolderIdType * distinguishedFolderIds = [[MPSEWSDistinguishedFolderIdType alloc] init];
    distinguishedFolderIds.id =  [MPSEWSDistinguishedFolderIdNameType inbox];
    
    MPSEWSNonEmptyArrayOfBaseFolderIdsType * folderIds = [[MPSEWSNonEmptyArrayOfBaseFolderIdsType alloc] init];
    [folderIds addDistinguishedFolderId:distinguishedFolderIds];
    
    folderTypObj.folderIds = folderIds;
    NSMutableString* folderTypeRequest = [[NSMutableString alloc] init];
    [MPSEWSDocumentHandler toXml:folderTypObj buffer:folderTypeRequest];
    
    NSLog(@"folderTypeRequest = %@", folderTypeRequest);
    return 0;

    NSString* xml = @"<?xml version=\"1.0\" encoding=\"utf-8\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\"><s:Header><h:ServerVersionInfo MajorVersion=\"15\" MinorVersion=\"0\" MajorBuildNumber=\"1076\" MinorBuildNumber=\"10\" Version=\"V2_22\" xmlns:h=\"http://schemas.microsoft.com/exchange/services/2006/types\" xmlns=\"http://schemas.microsoft.com/exchange/services/2006/types\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"/></s:Header><s:Body xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><m:SyncFolderHierarchyResponse xmlns:m=\"http://schemas.microsoft.com/exchange/services/2006/messages\" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\"><m:ResponseMessages></m:ResponseMessages></m:SyncFolderHierarchyResponse></s:Body></s:Envelope>";
        //@"<BasePermission xmlns=\"ews_xsd/messages\" xmlns:t=\"ews_xsd/types\"><t:UserId><t:SID>sid</t:SID><Ignore><Foo></Foo><Foo></Foo></Ignore><t:PrimarySmtpAddress>fiberlink.com</t:PrimarySmtpAddress><t:DisplayName>Venkat Murty</t:DisplayName><t:DistinguishedUser>Default</t:DistinguishedUser></t:UserId><t:CanCreateItems>TRUE</t:CanCreateItems><t:EditItems>All</t:EditItems><t:DeleteItems>None</t:DeleteItems></BasePermission>";

        MPSEWSResponse* obj = [MPSEWSDocumentHandler toObj:xml];

        NSLog(@"obj = %@", obj);

        NSMutableString* b = [[NSMutableString alloc] init];
        [MPSEWSDocumentHandler toXml:[obj header] buffer:b];
        [MPSEWSDocumentHandler toXml:[obj body]   buffer:b];

        NSLog(@"xml = %@", xml);
        NSLog(@"xml = %@", b);

/*
        xml = @"<t:SharingSecurity  xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\"><UserSid>sid</UserSid><A></A></t:SharingSecurity>";

        obj = [MPSEWSDocumentHandler toObj:xml];
        NSLog(@"obj = %@", obj);
        obj = [[NSString alloc] initWithData:obj encoding:NSUTF8StringEncoding];
        NSLog(@"obj = %@", obj);
*/
}

