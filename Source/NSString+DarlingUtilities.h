#import <NSString.h>
#import <NSException.h>

@interface NSString (DarlingUtilities)

- (BOOL)getBytes:(void *)buffer 
       maxLength:(NSUInteger)maxBufferCount 
      usedLength:(NSUInteger *)usedBufferCount 
        encoding:(NSStringEncoding)encoding 
         options:(NSStringEncodingConversionOptions)options 
           range:(NSRange)range 
  remainingRange:(NSRangePointer)leftover;

@end