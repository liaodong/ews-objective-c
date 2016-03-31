#import <Foundation/Foundation.h>



@class MPSEWSMemberType;



/* MembersListType */
@interface MPSEWSMembersListType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMembersListType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMemberType*>* member;


- (void) addMember:(MPSEWSMemberType*) elem;
@end

