#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSMemberType;



/* MembersListType */
@interface MPSEWSMembersListType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMembersListType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMemberType*>* member;


- (void) addMember:(MPSEWSMemberType*) elem;
@end

