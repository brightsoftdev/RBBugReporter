//
// RBEmailBuilder.h
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

#import <Foundation/Foundation.h>


@protocol RBEmailBuilder <NSObject>

/**
 * An array of NSStrings which each hold a valid email address.
 *
 * @return The recipients of the email.
 */
- (NSArray *)recipients;

/**
 * A string for the email's subject.
 *
 * @return The subject line of the email.
 */
- (NSString *)subjectLine;

/**
 * A string containing the body text of the email. May be plain text or HTML.
 *
 * @return The text of the email message.
 */
- (NSString *)emailMessage;

/**
 * Indicates if the message is HTML or plain text.
 *
 * @return YES if -emailMessage return HTML or NO if -emailMessage returns plain 
 * text.
 */
- (BOOL)isHTML;

/**
 * An array of RBAttachments that hold the attachments of the email. If there 
 * are no attachements, then an empty array is returned. Must not return nil.
 *
 * @return The attachments of the email.
 */
- (NSArray *)attachments;

@end
