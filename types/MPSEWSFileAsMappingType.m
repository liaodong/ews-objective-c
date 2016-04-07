#import <Foundation/Foundation.h>

#import "MPSEWSFileAsMappingType.h"
@implementation MPSEWSFileAsMappingType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSFileAsMappingType None], 
                                         [MPSEWSFileAsMappingType LastCommaFirst], 
                                         [MPSEWSFileAsMappingType FirstSpaceLast], 
                                         [MPSEWSFileAsMappingType Company], 
                                         [MPSEWSFileAsMappingType LastCommaFirstCompany], 
                                         [MPSEWSFileAsMappingType CompanyLastFirst], 
                                         [MPSEWSFileAsMappingType LastFirst], 
                                         [MPSEWSFileAsMappingType LastFirstCompany], 
                                         [MPSEWSFileAsMappingType CompanyLastCommaFirst], 
                                         [MPSEWSFileAsMappingType LastFirstSuffix], 
                                         [MPSEWSFileAsMappingType LastSpaceFirstCompany], 
                                         [MPSEWSFileAsMappingType CompanyLastSpaceFirst], 
                                         [MPSEWSFileAsMappingType LastSpaceFirst], 
                                         [MPSEWSFileAsMappingType DisplayName], 
                                         [MPSEWSFileAsMappingType FirstName], 
                                         [MPSEWSFileAsMappingType LastFirstMiddleSuffix], 
                                         [MPSEWSFileAsMappingType LastName], 
                                         [MPSEWSFileAsMappingType Empty], nil];
    [[[MPSEWSFileAsMappingType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSFileAsMappingType class]];
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

+ (NSString *) None { return @"None"; }
+ (NSString *) LastCommaFirst { return @"LastCommaFirst"; }
+ (NSString *) FirstSpaceLast { return @"FirstSpaceLast"; }
+ (NSString *) Company { return @"Company"; }
+ (NSString *) LastCommaFirstCompany { return @"LastCommaFirstCompany"; }
+ (NSString *) CompanyLastFirst { return @"CompanyLastFirst"; }
+ (NSString *) LastFirst { return @"LastFirst"; }
+ (NSString *) LastFirstCompany { return @"LastFirstCompany"; }
+ (NSString *) CompanyLastCommaFirst { return @"CompanyLastCommaFirst"; }
+ (NSString *) LastFirstSuffix { return @"LastFirstSuffix"; }
+ (NSString *) LastSpaceFirstCompany { return @"LastSpaceFirstCompany"; }
+ (NSString *) CompanyLastSpaceFirst { return @"CompanyLastSpaceFirst"; }
+ (NSString *) LastSpaceFirst { return @"LastSpaceFirst"; }
+ (NSString *) DisplayName { return @"DisplayName"; }
+ (NSString *) FirstName { return @"FirstName"; }
+ (NSString *) LastFirstMiddleSuffix { return @"LastFirstMiddleSuffix"; }
+ (NSString *) LastName { return @"LastName"; }
+ (NSString *) Empty { return @"Empty"; }
@end

