#import <Foundation/Foundation.h>
#import "generator.h"



int main (int argc, const char* argv[]) {
    const char* x = argc > 1 ? argv[1] : "ews_xsd";
    {
        Generator* g = [[Generator alloc] init:[[NSString alloc] initWithUTF8String:x]];
        (void) g;
    }
    return 0;
}

