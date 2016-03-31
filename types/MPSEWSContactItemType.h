#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSArrayOfBinaryType;
@class MPSEWSArrayOfRecipientsType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSCompleteNameType;
@class MPSEWSEmailAddressDictionaryType;
@class MPSEWSImAddressDictionaryType;
@class MPSEWSPhoneNumberDictionaryType;
@class MPSEWSPhysicalAddressDictionaryType;
@class MPSEWSSingleRecipientType;



/* ContactItemType */
@interface MPSEWSContactItemType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSContactItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            fileAs                 /* xs:string */;
@property (strong) NSString*                            fileAsMapping          /* MPSEWSFileAsMappingType */;
@property (strong) NSString*                            displayName            /* xs:string */;
@property (strong) NSString*                            givenName              /* xs:string */;
@property (strong) NSString*                            initials               /* xs:string */;
@property (strong) NSString*                            middleName             /* xs:string */;
@property (strong) NSString*                            nickname               /* xs:string */;
@property (strong) MPSEWSCompleteNameType*              completeName;
@property (strong) NSString*                            companyName            /* xs:string */;
@property (strong) MPSEWSEmailAddressDictionaryType*    emailAddresses;
@property (strong) MPSEWSPhysicalAddressDictionaryType* physicalAddresses;
@property (strong) MPSEWSPhoneNumberDictionaryType*     phoneNumbers;
@property (strong) NSString*                            assistantName          /* xs:string */;
@property (strong) NSString*                            birthday               /* xs:dateTime */;
@property (strong) NSString*                            businessHomePage       /* xs:anyURI */;
@property (strong) MPSEWSArrayOfStringsType*            children;
@property (strong) MPSEWSArrayOfStringsType*            companies;
@property (strong) NSString*                            contactSource          /* MPSEWSContactSourceType */;
@property (strong) NSString*                            department             /* xs:string */;
@property (strong) NSString*                            generation             /* xs:string */;
@property (strong) MPSEWSImAddressDictionaryType*       imAddresses;
@property (strong) NSString*                            jobTitle               /* xs:string */;
@property (strong) NSString*                            manager                /* xs:string */;
@property (strong) NSString*                            mileage                /* xs:string */;
@property (strong) NSString*                            officeLocation         /* xs:string */;
@property (strong) NSString*                            postalAddressIndex     /* MPSEWSPhysicalAddressIndexType */;
@property (strong) NSString*                            profession             /* xs:string */;
@property (strong) NSString*                            spouseName             /* xs:string */;
@property (strong) NSString*                            surname                /* xs:string */;
@property (strong) NSString*                            weddingAnniversary     /* xs:dateTime */;
@property (strong) NSNumber*                            hasPicture             /* xs:boolean */;
@property (strong) NSString*                            phoneticFullName       /* xs:string */;
@property (strong) NSString*                            phoneticFirstName      /* xs:string */;
@property (strong) NSString*                            phoneticLastName       /* xs:string */;
@property (strong) NSString*                            alias                  /* xs:string */;
@property (strong) NSString*                            notes                  /* xs:string */;
@property (strong) NSData*                              photo                  /* xs:base64Binary */;
@property (strong) MPSEWSArrayOfBinaryType*             userSMIMECertificate;
@property (strong) MPSEWSArrayOfBinaryType*             mSExchangeCertificate;
@property (strong) NSString*                            directoryId            /* xs:string */;
@property (strong) MPSEWSSingleRecipientType*           managerMailbox;
@property (strong) MPSEWSArrayOfRecipientsType*         directReports;


@end

