#import <Foundation/Foundation.h>
#import "generator.h"



int main (int argc, const char* argv[]) {
    {
        Generator *generator = [[Generator alloc] initWithFile: @"ews_xsd/types.xsd"];

        [generator parse];
        [generator generate];
    }
    return 0;
}

