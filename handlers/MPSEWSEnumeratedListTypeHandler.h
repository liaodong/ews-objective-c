#import <Foundation/Foundation.h>

#import "MPSEWSSimpleTypeHandler.h"


@interface MPSEWSEnumeratedListTypeHandler : MPSEWSSimpleTypeHandler 

@property (weak) NSSet* enumerations;

/** Initialize the handler */
- (id) initWithClass:(Class) cls andValues:(NSSet*) v;

/** construct an empty list */
- (NSMutableArray<NSString*> *) construct;

/** Process the characters */
- (NSMutableArray<NSString *> *) updateObject:(NSMutableArray<NSString *> *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer forObject:(NSMutableArray<NSString *> *) object;

@end

