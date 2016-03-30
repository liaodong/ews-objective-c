#import <Foundation/Foundation.h>

#import "MPSEWSIdFormatType.h"
@implementation MPSEWSIdFormatType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSIdFormatType EwsLegacyId], 
                                         [MPSEWSIdFormatType EwsId], 
                                         [MPSEWSIdFormatType EntryId], 
                                         [MPSEWSIdFormatType HexEntryId], 
                                         [MPSEWSIdFormatType StoreId], 
                                         [MPSEWSIdFormatType OwaId], nil];
    [[[MPSEWSIdFormatType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSIdFormatType class]];
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

