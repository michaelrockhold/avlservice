#import "AvlService.h"
#import <libxml/xmlstring.h>
@implementation AvlService_AvlReport
- (id)init
{
	if((self = [super init])) {
		routeID = 0;
		longitude = 0;
		vehicleID = 0;
		latitude = 0;
		y = 0;
		x = 0;
		heading = 0;
		absoluteTime = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(routeID != nil) [routeID release];
	if(longitude != nil) [longitude release];
	if(vehicleID != nil) [vehicleID release];
	if(latitude != nil) [latitude release];
	if(y != nil) [y release];
	if(x != nil) [x release];
	if(heading != nil) [heading release];
	if(absoluteTime != nil) [absoluteTime release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"AvlService";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"AvlService:AvlReport\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	if(self.routeID != 0) {
		[serializedForm appendFormat:@"\n%@", [self.routeID serializedFormUsingElementName:@"routeID"]];
	}
	if(self.longitude != 0) {
		[serializedForm appendFormat:@"\n%@", [self.longitude serializedFormUsingElementName:@"longitude"]];
	}
	if(self.vehicleID != 0) {
		[serializedForm appendFormat:@"\n%@", [self.vehicleID serializedFormUsingElementName:@"vehicleID"]];
	}
	if(self.latitude != 0) {
		[serializedForm appendFormat:@"\n%@", [self.latitude serializedFormUsingElementName:@"latitude"]];
	}
	if(self.y != 0) {
		[serializedForm appendFormat:@"\n%@", [self.y serializedFormUsingElementName:@"y"]];
	}
	if(self.x != 0) {
		[serializedForm appendFormat:@"\n%@", [self.x serializedFormUsingElementName:@"x"]];
	}
	if(self.heading != 0) {
		[serializedForm appendFormat:@"\n%@", [self.heading serializedFormUsingElementName:@"heading"]];
	}
	if(self.absoluteTime != 0) {
		[serializedForm appendFormat:@"\n%@", [self.absoluteTime serializedFormUsingElementName:@"absoluteTime"]];
	}
	
	return serializedForm;
}
/* elements */
@synthesize routeID;
@synthesize longitude;
@synthesize vehicleID;
@synthesize latitude;
@synthesize y;
@synthesize x;
@synthesize heading;
@synthesize absoluteTime;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (AvlService_AvlReport *)deserializeNode:(xmlNodePtr)cur
{
	AvlService_AvlReport *newObject = [[AvlService_AvlReport new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "routeID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.routeID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "longitude")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.longitude = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "vehicleID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.vehicleID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "latitude")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.latitude = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "y")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.y = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "x")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.x = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "heading")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.heading = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "absoluteTime")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, (const xmlChar *)[prefix UTF8String]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.absoluteTime = newChild;
			}
		}
	}
}
@end
@implementation AvlService_ArrayOf_xsd_string
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"AvlService";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"AvlService:ArrayOf_xsd_string\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (AvlService_ArrayOf_xsd_string *)deserializeNode:(xmlNodePtr)cur
{
	AvlService_ArrayOf_xsd_string *newObject = [[AvlService_ArrayOf_xsd_string new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation AvlService_ArrayOfAvlReport
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"AvlService";
}
- (NSString *)serializedFormUsingElementName:(NSString *)elName
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<%@ xsi:type=\"AvlService:ArrayOfAvlReport\"", elName];
	[serializedForm appendString:[self serializedAttributeString]];
	[serializedForm appendFormat:@">"];
	
	[serializedForm appendString:[self serializedElementString]];
	
	[serializedForm appendFormat:@"\n</%@>", elName];
	
	return serializedForm;
}
- (NSString *)serializedAttributeString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
- (NSString *)serializedElementString
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	
	
	return serializedForm;
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (AvlService_ArrayOfAvlReport *)deserializeNode:(xmlNodePtr)cur
{
	AvlService_ArrayOfAvlReport *newObject = [[AvlService_ArrayOfAvlReport new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
@implementation AvlService
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"AvlService" forKey:@"http://avl.transit.ws.its.washington.edu"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"ns1" forKey:@"http://schemas.xmlsoap.org/soap/encoding/"];
}
+ (AvlPortSoapBinding *)AvlPortSoapBinding
{
	return [[[AvlPortSoapBinding alloc] initWithAddress:@"http://ws.its.washington.edu:9090/transit/avl/services/AvlService"] autorelease];
}
@end
@implementation AvlPortSoapBinding
@synthesize address;
@synthesize logXMLInOut;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		logXMLInOut = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (AvlPortSoapBindingResponse *)getTimeUsing
{
	AvlPortSoapBinding_getTime *operation = [(AvlPortSoapBinding_getTime*)[AvlPortSoapBinding_getTime alloc] initWithBinding:self
	];
	
	NSOperationQueue *queue = [[NSOperationQueue new] autorelease];
	
	[queue addOperation:operation];
	
	[queue waitUntilAllOperationsAreFinished];
	
	return operation.response;
}
- (AvlPortSoapBindingResponse *)getAgenciesUsing
{
	AvlPortSoapBinding_getAgencies *operation = [(AvlPortSoapBinding_getAgencies*)[AvlPortSoapBinding_getAgencies alloc] initWithBinding:self
	];
	
	NSOperationQueue *queue = [[NSOperationQueue new] autorelease];
	
	[queue addOperation:operation];
	
	[queue waitUntilAllOperationsAreFinished];
	
	return operation.response;
}
- (AvlPortSoapBindingResponse *)getLatestByRouteUsingIn0:(NSString *)aIn0 in1:(NSNumber *)aIn1 
{
	AvlPortSoapBinding_getLatestByRoute *operation = [(AvlPortSoapBinding_getLatestByRoute*)[AvlPortSoapBinding_getLatestByRoute alloc] initWithBinding:self
		in0:aIn0
		in1:aIn1
	];
	
	NSOperationQueue *queue = [[NSOperationQueue new] autorelease];
	
	[queue addOperation:operation];
	
	[queue waitUntilAllOperationsAreFinished];
	
	return operation.response;
}
- (NSString *)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction
{
	NSMutableDictionary *HTTPHeaders = [NSMutableDictionary dictionary];
	if(cookies != nil) {
		NSDictionary *fCookies = [NSHTTPCookie requestHeaderFieldsWithCookies:cookies];
		[HTTPHeaders addEntriesFromDictionary:fCookies];
	}
	[HTTPHeaders setObject:@"wsdl2objc" forKey:@"UserAgent"];
	[HTTPHeaders setObject:soapAction forKey:@"SOAPAction"];
	
	CFHTTPMessageRef request = CFHTTPMessageCreateRequest(kCFAllocatorDefault, (CFStringRef)@"POST", (CFURLRef)self.address, kCFHTTPVersion1_1);
	
	CFDataRef bodyData = (CFDataRef)[outputBody dataUsingEncoding:NSUTF8StringEncoding];
	CFHTTPMessageSetBody(request, bodyData);
	
	for(NSString *key in [HTTPHeaders allKeys]) {
		CFHTTPMessageSetHeaderFieldValue(request, (CFStringRef)key, (CFStringRef)[HTTPHeaders objectForKey:key]);
	}
	
	NSDictionary *outputHeaders = (NSDictionary*)CFHTTPMessageCopyAllHeaderFields(request);
	
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", outputHeaders);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	CFReadStreamRef readStream = CFReadStreamCreateForHTTPRequest(kCFAllocatorDefault, request);
	
	if(!CFReadStreamOpen(readStream)) {
		CFStreamError myErr = CFReadStreamGetError(readStream);
		// An error has occurred.
        if (myErr.domain == kCFStreamErrorDomainPOSIX) {
        // Interpret myErr.error as a UNIX errno.
        } else if (myErr.domain == kCFStreamErrorDomainMacOSStatus) {
        // Interpret myErr.error as a MacOS error code.
            //OSStatus macError = (OSStatus)myErr.error;
        // Check other error domains.
		}
	}
	
	CFReadStreamSetProperty(readStream, kCFStreamPropertyHTTPShouldAutoredirect, kCFBooleanTrue);
	
	//CFHTTPMessageRef response = (CFHTTPMessageRef)CFReadStreamCopyProperty(readStream, kCFStreamPropertyHTTPResponseHeader);
	//NSString *statusLine = (NSString*)CFHTTPMessageCopyResponseStatusLine(response);
	
	NSMutableString *responseBody = [NSMutableString string];
	
	static unsigned int kReadBufSize = 1024;
	CFIndex numBytesRead;
	do {
		UInt8 buf[kReadBufSize];
		numBytesRead = CFReadStreamRead(readStream, buf, sizeof(buf));
		if( numBytesRead > 0 ) {
			[responseBody appendString:[[[NSString alloc] initWithBytes:buf length:numBytesRead encoding:NSUTF8StringEncoding] autorelease]];
		} else if( numBytesRead < 0 ) {
			//CFStreamError error = CFReadStreamGetError(readStream);
			//[[NSApplication sharedApplication] presentError:(NSError*)error];
		}
	} while( numBytesRead > 0 );
	
	CFHTTPMessageRef response = (CFHTTPMessageRef)CFReadStreamCopyProperty(readStream, kCFStreamPropertyHTTPResponseHeader);
	NSDictionary *responseHeaders = (NSDictionary*)CFHTTPMessageCopyAllHeaderFields(response);
	[responseHeaders autorelease];
	
	if(cookies) [cookies release];
	cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:responseHeaders forURL:self.address] mutableCopy];
	
	if(self.logXMLInOut) {
		NSLog(@"ResponseHeaders:\n%@", responseHeaders);
		NSLog(@"ResponseBody:\n%@", responseBody);
	}
	
	return responseBody;
}
@end
@implementation AvlPortSoapBinding_getTime
@synthesize binding;
@synthesize response;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
{
	if((self = [super init])) {
		response = nil;
		
		self.binding = aBinding;
		
	}
	
	return self;
}
- (void)dealloc
{
	if(binding != nil) [binding release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [AvlPortSoapBindingResponse new];
	
	AvlPortSoapBinding_envelope *envelope = [AvlPortSoapBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	NSString *responseBody = [binding sendHTTPCallUsingBody:operationXMLString soapAction:@""];
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	const char *buffer = [responseBody cStringUsingEncoding:NSUTF8StringEncoding];
	
	doc = xmlParseMemory(buffer, [responseBody length]);
	
	NSAssert(doc != NULL, @"Errors while parsing returned XML");
	
	cur = xmlDocGetRootElement(doc);
	cur = cur->children;
	
	for( ; cur != NULL ; cur = cur->next) {
		if(cur->type == XML_ELEMENT_NODE) {
			
			if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
				NSMutableArray *responseBodyParts = [NSMutableArray array];
				
				xmlNodePtr bodyNode;
				for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
					if(cur->type == XML_ELEMENT_NODE) {
						if(xmlStrEqual(bodyNode->name, (const xmlChar *) "long_")) {
							NSNumber  *bodyObject = [NSNumber  deserializeNode:bodyNode];
							NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
							[responseBodyParts addObject:bodyObject];
						}
					}
				}
				
				response.bodyParts = responseBodyParts;
			}
		}
	}
	
	xmlFreeDoc(doc);
	
	xmlCleanupParser();
}
@end
@implementation AvlPortSoapBinding_getAgencies
@synthesize binding;
@synthesize response;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
{
	if((self = [super init])) {
		response = nil;
		
		self.binding = aBinding;
		
	}
	
	return self;
}
- (void)dealloc
{
	if(binding != nil) [binding release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [AvlPortSoapBindingResponse new];
	
	AvlPortSoapBinding_envelope *envelope = [AvlPortSoapBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	NSString *responseBody = [binding sendHTTPCallUsingBody:operationXMLString soapAction:@""];
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	const char *buffer = [responseBody cStringUsingEncoding:NSUTF8StringEncoding];
	
	doc = xmlParseMemory(buffer, [responseBody length]);
	
	NSAssert(doc != NULL, @"Errors while parsing returned XML");
	
	cur = xmlDocGetRootElement(doc);
	cur = cur->children;
	
	for( ; cur != NULL ; cur = cur->next) {
		if(cur->type == XML_ELEMENT_NODE) {
			
			if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
				NSMutableArray *responseBodyParts = [NSMutableArray array];
				
				xmlNodePtr bodyNode;
				for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
					if(cur->type == XML_ELEMENT_NODE) {
						if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ArrayOf_xsd_string")) {
							AvlService_ArrayOf_xsd_string *bodyObject = [AvlService_ArrayOf_xsd_string deserializeNode:bodyNode];
							NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
							[responseBodyParts addObject:bodyObject];
						}
					}
				}
				
				response.bodyParts = responseBodyParts;
			}
		}
	}
	
	xmlFreeDoc(doc);
	
	xmlCleanupParser();
}
@end
@implementation AvlPortSoapBinding_getLatestByRoute
@synthesize binding;
@synthesize response;
@synthesize in0;
@synthesize in1;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
  in0:(NSString *)aIn0
  in1:(NSNumber *)aIn1
{
	if((self = [super init])) {
		response = nil;
		
		self.binding = aBinding;
		
		self.in0 = aIn0;
		self.in1 = aIn1;
	}
	
	return self;
}
- (void)dealloc
{
	if(binding != nil) [binding release];
	if(in0 != nil) [in0 release];
	if(in1 != nil) [in1 release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [AvlPortSoapBindingResponse new];
	
	AvlPortSoapBinding_envelope *envelope = [AvlPortSoapBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
		if(in0 != nil) [bodyElements setObject:in0 forKey:@"string"];
		if(in1 != nil) [bodyElements setObject:in1 forKey:@"int_"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	NSString *responseBody = [binding sendHTTPCallUsingBody:operationXMLString soapAction:@""];
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	const char *buffer = [responseBody cStringUsingEncoding:NSUTF8StringEncoding];
	
	doc = xmlParseMemory(buffer, [responseBody length]);
	
	NSAssert(doc != NULL, @"Errors while parsing returned XML");
	
	cur = xmlDocGetRootElement(doc);
	cur = cur->children;
	
	for( ; cur != NULL ; cur = cur->next) {
		if(cur->type == XML_ELEMENT_NODE) {
			
			if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
				NSMutableArray *responseBodyParts = [NSMutableArray array];
				
				xmlNodePtr bodyNode;
				for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
					if(cur->type == XML_ELEMENT_NODE) {
						if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ArrayOfAvlReport")) {
							AvlService_ArrayOfAvlReport *bodyObject = [AvlService_ArrayOfAvlReport deserializeNode:bodyNode];
							NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
							[responseBodyParts addObject:bodyObject];
						}
					}
				}
				
				response.bodyParts = responseBodyParts;
			}
		}
	}
	
	xmlFreeDoc(doc);
	
	xmlCleanupParser();
}
@end
static AvlPortSoapBinding_envelope *AvlPortSoapBindingSharedEnvelopeInstance = nil;
@implementation AvlPortSoapBinding_envelope
+ (AvlPortSoapBinding_envelope *)sharedInstance
{
	if(AvlPortSoapBindingSharedEnvelopeInstance == nil) {
		AvlPortSoapBindingSharedEnvelopeInstance = [AvlPortSoapBinding_envelope new];
	}
	
	return AvlPortSoapBindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
	NSMutableString *serializedForm = [NSMutableString string];
	
	[serializedForm appendFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"];
	[serializedForm appendFormat:@"<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"\n"];
	[serializedForm appendFormat:@"xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" xsl:version=\"1.0\"\n"];
	[serializedForm appendFormat:@"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n"];
	[serializedForm appendFormat:@"xmlns:=\"http://www.w3.org/2001/XMLSchema\"\n"];
	[serializedForm appendFormat:@"xmlns:AvlService=\"http://avl.transit.ws.its.washington.edu\"\n"];
	[serializedForm appendFormat:@"xmlns:ns1=\"http://schemas.xmlsoap.org/soap/encoding/\"\n"];
	[serializedForm appendFormat:@">\n"];
	
	if(headerElements != nil) {
		[serializedForm appendFormat:@"<soap:Header>\n"];
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			NSString *elementName = [NSString stringWithFormat:@"%@:%@", [header nsPrefix], key];
			
			[serializedForm appendFormat:@"%@\n", [header serializedFormUsingElementName:elementName]];
		}
		
		[serializedForm appendFormat:@"</soap:Header>"];
	}
	
	if(bodyElements != nil) {
		[serializedForm appendFormat:@"<soap:Body>\n"];
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			NSString *elementName = [NSString stringWithFormat:@"%@:%@", [body nsPrefix], key];
			
			[serializedForm appendFormat:@"%@\n", [body serializedFormUsingElementName:elementName]];
		}
		
		[serializedForm appendFormat:@"</soap:Body>\n"];
	}
	
	[serializedForm appendFormat:@"</soap:Envelope>"];
	
	return serializedForm;
}
@end
@implementation AvlPortSoapBindingResponse
@synthesize headers;
@synthesize bodyParts;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
	}
	
	return self;
}
@end
