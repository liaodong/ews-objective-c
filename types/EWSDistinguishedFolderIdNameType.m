#import <Foundation/Foundation.h>

#import "EWSDistinguishedFolderIdNameType.h"
@implementation EWSDistinguishedFolderIdNameType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDistinguishedFolderIdNameType calendar], 
                                         [EWSDistinguishedFolderIdNameType contacts], 
                                         [EWSDistinguishedFolderIdNameType deleteditems], 
                                         [EWSDistinguishedFolderIdNameType drafts], 
                                         [EWSDistinguishedFolderIdNameType inbox], 
                                         [EWSDistinguishedFolderIdNameType journal], 
                                         [EWSDistinguishedFolderIdNameType notes], 
                                         [EWSDistinguishedFolderIdNameType outbox], 
                                         [EWSDistinguishedFolderIdNameType sentitems], 
                                         [EWSDistinguishedFolderIdNameType tasks], 
                                         [EWSDistinguishedFolderIdNameType msgfolderroot], 
                                         [EWSDistinguishedFolderIdNameType publicfoldersroot], 
                                         [EWSDistinguishedFolderIdNameType root], 
                                         [EWSDistinguishedFolderIdNameType junkemail], 
                                         [EWSDistinguishedFolderIdNameType searchfolders], 
                                         [EWSDistinguishedFolderIdNameType voicemail], nil];
    [[[EWSDistinguishedFolderIdNameType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDistinguishedFolderIdNameType class]];
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

+ (NSString *) calendar { return @"calendar"; }
+ (NSString *) contacts { return @"contacts"; }
+ (NSString *) deleteditems { return @"deleteditems"; }
+ (NSString *) drafts { return @"drafts"; }
+ (NSString *) inbox { return @"inbox"; }
+ (NSString *) journal { return @"journal"; }
+ (NSString *) notes { return @"notes"; }
+ (NSString *) outbox { return @"outbox"; }
+ (NSString *) sentitems { return @"sentitems"; }
+ (NSString *) tasks { return @"tasks"; }
+ (NSString *) msgfolderroot { return @"msgfolderroot"; }
+ (NSString *) publicfoldersroot { return @"publicfoldersroot"; }
+ (NSString *) root { return @"root"; }
+ (NSString *) junkemail { return @"junkemail"; }
+ (NSString *) searchfolders { return @"searchfolders"; }
+ (NSString *) voicemail { return @"voicemail"; }
@end

