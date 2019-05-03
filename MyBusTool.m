#import <Foundation/Foundation.h>

#import "MyBus.h"

#if 0
id GetEventData(SInt32 timepointId, SInt32 startTimeRangeMinutes, SInt32 endTimeRangeMinutes)
{
	//http://ws.its.washington.edu:9090/transit/mybus/services/MybusService?method=getEventData&in0=30&in1=-10&in2=5903&in3=http://transit.metrokc.gov
	//return [MybusService getEventData:endTimeRangeMinutes in_in1:startTimeRangeMinutes in_in2:timepointId in_in3:@"http://transit.metrokc.gov"];
	return [MybusService getEventData:@"http://transit.metrokc.gov" in_in1:endTimeRangeMinutes in_in2:timepointId in_in3:startTimeRangeMinutes ];
}
#else
id GetEventData(NSString* timepointId, NSString* startTimeRangeMinutes, NSString* endTimeRangeMinutes)
{
	return [MybusDotNetService getEventEstimates:timepointId in_loTime:startTimeRangeMinutes in_hiTime:endTimeRangeMinutes];
}
#endif

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");

    
	id foo = GetEventData(@"5903", @"-10", @"30");
	
	
	[pool drain];
    return 0;
}
