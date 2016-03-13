#import <Foundation/Foundation.h>
#import "generator.h"



int main (int argc, const char* argv[]) {
    {
        [[Generator alloc] initWithFile: @"ews_xsd/types.xsd"];
    }
    return 0;
}

