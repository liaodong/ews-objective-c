#import <Foundation/Foundation.h>

#import "EWSFileAsMappingType.h"
@implementation EWSFileAsMappingType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSFileAsMappingType None], 
                                         [EWSFileAsMappingType LastCommaFirst], 
                                         [EWSFileAsMappingType FirstSpaceLast], 
                                         [EWSFileAsMappingType Company], 
                                         [EWSFileAsMappingType LastCommaFirstCompany], 
                                         [EWSFileAsMappingType CompanyLastFirst], 
                                         [EWSFileAsMappingType LastFirst], 
                                         [EWSFileAsMappingType LastFirstCompany], 
                                         [EWSFileAsMappingType CompanyLastCommaFirst], 
                                         [EWSFileAsMappingType LastFirstSuffix], 
                                         [EWSFileAsMappingType LastSpaceFirstCompany], 
                                         [EWSFileAsMappingType CompanyLastSpaceFirst], 
                                         [EWSFileAsMappingType LastSpaceFirst], nil];
    [[[EWSFileAsMappingType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSFileAsMappingType class]];
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
@end

