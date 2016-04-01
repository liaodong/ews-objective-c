#import <Foundation/Foundation.h>
#import "Generator.h"
#import "handlers/MPSEWSDocumentHandler.h"

int main (int argc, const char* argv[]) {
        NSString* xml = @"<t:SerializedSecurityContext  xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\"><t:UserSid>sid</t:UserSid></t:SerializedSecurityContext>";
        
        //@"<BasePermission xmlns=\"ews_xsd/messages\" xmlns:t=\"ews_xsd/types\"><t:UserId><t:SID>sid</t:SID><Ignore><Foo></Foo><Foo></Foo></Ignore><t:PrimarySmtpAddress>fiberlink.com</t:PrimarySmtpAddress><t:DisplayName>Venkat Murty</t:DisplayName><t:DistinguishedUser>Default</t:DistinguishedUser></t:UserId><t:CanCreateItems>TRUE</t:CanCreateItems><t:EditItems>All</t:EditItems><t:DeleteItems>None</t:DeleteItems></BasePermission>";

        id obj = [MPSEWSDocumentHandler toObj:xml];

        NSLog(@"obj = %@", obj);

        NSMutableString* b = [[NSMutableString alloc] init];
        [MPSEWSDocumentHandler toXml:obj buffer:b];

        NSLog(@"xml = %@", xml);
        NSLog(@"xml = %@", b);

        xml = @"<t:SharingSecurity  xmlns=\"http://schemas.microsoft.com/exchange/services/2006/messages\" xmlns:t=\"http://schemas.microsoft.com/exchange/services/2006/types\"><UserSid>sid</UserSid><A></A></t:SharingSecurity>";

        obj = [MPSEWSDocumentHandler toObj:xml];
        NSLog(@"obj = %@", obj);
        obj = [[NSString alloc] initWithData:obj encoding:NSUTF8StringEncoding];
        NSLog(@"obj = %@", obj);
}

