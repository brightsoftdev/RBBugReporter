//
// RBLogFactory.m
//
// Copyright (c) 2011 Robert Brown
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "RBLogFileFactory.h"

#import "RBExtendedLogFile.h"

/// The singleton instance.
static RBLogFileFactory * sharedFactory = nil;


@implementation RBLogFileFactory

- (id<RBLogFile>)newLogFileWithPath:(NSString *)path {
    
    return [[RBExtendedLogFile alloc] initWithFilePath:path];
}

#pragma mark - Singleton methods

+ (RBLogFileFactory *)sharedFactory {
    
    @synchronized(self) {
    
        if (!sharedFactory) {
            
            sharedFactory = [[super allocWithZone:nil] init];
        }
        
        return sharedFactory;
    }
}

+ (id) allocWithZone:(NSZone *)zone {
    
    // The retain is needed to satisfy the static analyzer.
    return [[self sharedFactory] retain];
}

- (id) copyWithZone:(NSZone *)zone {
    return self;
}

- (id) init {
    return self;
}

- (id) retain {
    return self;
}

- (oneway void) release {
    // Do nothing.
}

- (id) autorelease {
    return self;
}

- (NSUInteger) retainCount {
    return NSUIntegerMax;
}


@end
