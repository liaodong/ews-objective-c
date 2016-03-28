#import <Foundation/Foundation.h>
#import "EWSItemType.h"



@class EWSArrayOfStringsType;
@class EWSCompleteNameType;
@class EWSEmailAddressDictionaryType;
@class EWSImAddressDictionaryType;
@class EWSPhoneNumberDictionaryType;
@class EWSPhysicalAddressDictionaryType;



/* ContactItemType */
@interface EWSContactItemType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                         fileAs              /* xs:string */;
@property (strong) NSString*                         fileAsMapping       /* EWSFileAsMappingType */;
@property (strong) NSString*                         displayName         /* xs:string */;
@property (strong) NSString*                         givenName           /* xs:string */;
@property (strong) NSString*                         initials            /* xs:string */;
@property (strong) NSString*                         middleName          /* xs:string */;
@property (strong) NSString*                         nickname            /* xs:string */;
@property (strong) EWSCompleteNameType*              completeName;
@property (strong) NSString*                         companyName         /* xs:string */;
@property (strong) EWSEmailAddressDictionaryType*    emailAddresses;
@property (strong) EWSPhysicalAddressDictionaryType* physicalAddresses;
@property (strong) EWSPhoneNumberDictionaryType*     phoneNumbers;
@property (strong) NSString*                         assistantName       /* xs:string */;
@property (strong) NSString*                         birthday            /* xs:dateTime */;
@property (strong) NSString*                         businessHomePage    /* xs:anyURI */;
@property (strong) EWSArrayOfStringsType*            children;
@property (strong) EWSArrayOfStringsType*            companies;
@property (strong) NSString*                         contactSource       /* EWSContactSourceType */;
@property (strong) NSString*                         department          /* xs:string */;
@property (strong) NSString*                         generation          /* xs:string */;
@property (strong) EWSImAddressDictionaryType*       imAddresses;
@property (strong) NSString*                         jobTitle            /* xs:string */;
@property (strong) NSString*                         manager             /* xs:string */;
@property (strong) NSString*                         mileage             /* xs:string */;
@property (strong) NSString*                         officeLocation      /* xs:string */;
@property (strong) NSString*                         postalAddressIndex  /* EWSPhysicalAddressIndexType */;
@property (strong) NSString*                         profession          /* xs:string */;
@property (strong) NSString*                         spouseName          /* xs:string */;
@property (strong) NSString*                         surname             /* xs:string */;
@property (strong) NSString*                         weddingAnniversary  /* xs:dateTime */;


@end

