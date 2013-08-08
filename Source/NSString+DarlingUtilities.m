#import "NSString+DarlingUtilities.h"

@implementation NSString (DarlingUtilities)

- (BOOL)getBytes:(void *)buffer 
       maxLength:(NSUInteger)maxBufferCount 
      usedLength:(NSUInteger *)usedBufferCount 
        encoding:(NSStringEncoding)encoding 
         options:(NSStringEncodingConversionOptions)options 
           range:(NSRange)range 
  remainingRange:(NSRangePointer)leftover {

  	// Method returns YES if some characters were converted, NO if not
  	BOOL result = NO;
  	// End of the supplied range
  	NSUInteger endOfRange = range.location + range.length;

  	// If the supplied range begins beyond the string length, or if the receiver
  	// cannot be converted into the supplied encoding, nothing can be converted.
  	if (range.location > [self length]) {
  		return result;
  	} else if (![self canBeConvertedToEncoding:encoding]) {
  		return result;
  	}

  	/*
  	if (endOfRange > [self length]) {
  		NSException* e = [NSException exceptionWithName:NSRangeException
  												 reason:@"Supplied range extended beyond length of receiver"
  											   userInfo:nil];
  		@throw e;
  	}
  	*/

  	/*
		## TODO ##
		- See if maxLength is longer than range length
		- Calculate usedLength
		- Adjust for options
		- Get the byte representation
		- Calculate remainingRange
  	*/

}

@end