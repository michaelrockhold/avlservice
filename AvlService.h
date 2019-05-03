#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class AvlService_AvlReport;
@class AvlService_ArrayOf_xsd_string;
@class AvlService_ArrayOfAvlReport;
@interface AvlService_AvlReport : NSObject {
	
/* elements */
	NSNumber * routeID;
	NSNumber * longitude;
	NSNumber * vehicleID;
	NSNumber * latitude;
	NSNumber * y;
	NSNumber * x;
	NSNumber * heading;
	NSNumber * absoluteTime;
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (AvlService_AvlReport *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * routeID;
@property (retain) NSNumber * longitude;
@property (retain) NSNumber * vehicleID;
@property (retain) NSNumber * latitude;
@property (retain) NSNumber * y;
@property (retain) NSNumber * x;
@property (retain) NSNumber * heading;
@property (retain) NSNumber * absoluteTime;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface AvlService_ArrayOf_xsd_string : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (AvlService_ArrayOf_xsd_string *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface AvlService_ArrayOfAvlReport : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (NSString *)serializedFormUsingElementName:(NSString *)elName;
- (NSString *)serializedAttributeString;
- (NSString *)serializedElementString;
+ (AvlService_ArrayOfAvlReport *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import ".h"
#import "AvlService.h"
@class AvlPortSoapBinding;
@interface AvlService : NSObject {
	
}
+ (AvlPortSoapBinding *)AvlPortSoapBinding;
@end
@class AvlPortSoapBindingResponse;
@interface AvlPortSoapBinding : NSObject {
	NSURL *address;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
- (id)initWithAddress:(NSString *)anAddress;
- (NSString *)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (AvlPortSoapBindingResponse *)getTimeUsing;
- (AvlPortSoapBindingResponse *)getAgenciesUsing;
- (AvlPortSoapBindingResponse *)getLatestByRouteUsingIn0:(NSString *)aIn0 in1:(NSNumber *)aIn1 ;
@end
@interface AvlPortSoapBinding_getTime : NSOperation {
	AvlPortSoapBinding *binding;
	AvlPortSoapBindingResponse *response;
	
}
@property (retain) AvlPortSoapBinding *binding;
@property (readonly) AvlPortSoapBindingResponse *response;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
;
@end
@interface AvlPortSoapBinding_getAgencies : NSOperation {
	AvlPortSoapBinding *binding;
	AvlPortSoapBindingResponse *response;
	
}
@property (retain) AvlPortSoapBinding *binding;
@property (readonly) AvlPortSoapBindingResponse *response;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
;
@end
@interface AvlPortSoapBinding_getLatestByRoute : NSOperation {
	AvlPortSoapBinding *binding;
	AvlPortSoapBindingResponse *response;
	
	NSString * in0;
	NSNumber * in1;
}
@property (retain) AvlPortSoapBinding *binding;
@property (readonly) AvlPortSoapBindingResponse *response;
@property (retain) NSString * in0;
@property (retain) NSNumber * in1;
- (id)initWithBinding:(AvlPortSoapBinding *)aBinding
	in0:(NSString *)aIn0
	in1:(NSNumber *)aIn1
;
@end
@interface AvlPortSoapBinding_envelope : NSObject {
}
+ (AvlPortSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface AvlPortSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@end
