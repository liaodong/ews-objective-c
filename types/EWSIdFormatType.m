#import <Foundation/Foundation.h>

#import "EWSIdFormatType.h"
@implementation EWSIdFormatType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSIdFormatType EwsLegacyId], 
                                         [EWSIdFormatType EwsId], 
                                         [EWSIdFormatType EntryId], 
                                         [EWSIdFormatType HexEntryId], 
                                         [EWSIdFormatType StoreId], 
                                         [EWSIdFormatType OwaId], nil];
    [[[EWSIdFormatType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSIdFormatType class]];
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

+ (NSString *) EwsLegacyId { return @"EwsLegacyId"; }
+ (NSString *) EwsId { return @"EwsId"; }
+ (NSString *) EntryId { return @"EntryId"; }
+ (NSString *) HexEntryId { return @"HexEntryId"; }
+ (NSString *) StoreId { return @"StoreId"; }
+ (NSString *) OwaId { return @"OwaId"; }
@end

