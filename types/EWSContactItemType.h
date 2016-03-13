#import <Foundation/Foundation.h>




#import "../handlers/EWSAnyUriTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfStringsType.h"
#import "../types/EWSCompleteNameType.h"
#import "../types/EWSContactSourceType.h"
#import "../types/EWSEmailAddressDictionaryType.h"
#import "../types/EWSFileAsMappingType.h"
#import "../types/EWSImAddressDictionaryType.h"
#import "../types/EWSPhoneNumberDictionaryType.h"
#import "../types/EWSPhysicalAddressDictionaryType.h"
#import "../types/EWSPhysicalAddressIndexType.h"
#import "EWSItemType.h"



/* ContactItemType */
@interface EWSContactItemType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                                        fileAs              /* xs:string */;
@property (retain) NSString*                                        fileAsMapping       /* EWSFileAsMappingType */;
@property (retain) NSString*                                        displayName         /* xs:string */;
@property (retain) NSString*                                        givenName           /* xs:string */;
@property (retain) NSString*                                        initials            /* xs:string */;
@property (retain) NSString*                                        middleName          /* xs:string */;
@property (retain) NSString*                                        nickname            /* xs:string */;
@property (retain) EWSCompleteNameType*                             completeName;
@property (retain) NSString*                                        companyName         /* xs:string */;
@property (retain) NSArray<EWSEmailAddressDictionaryEntryType*>*    emailAddresses      /* EWSEmailAddressDictionaryType */;
@property (retain) NSArray<EWSPhysicalAddressDictionaryEntryType*>* physicalAddresses   /* EWSPhysicalAddressDictionaryType */;
@property (retain) NSArray<EWSPhoneNumberDictionaryEntryType*>*     phoneNumbers        /* EWSPhoneNumberDictionaryType */;
@property (retain) NSString*                                        assistantName       /* xs:string */;
@property (retain) NSString*                                        birthday            /* xs:dateTime */;
@property (retain) NSString*                                        businessHomePage    /* xs:anyURI */;
@property (retain) NSArray<NSString*>*                              children            /* EWSArrayOfStringsType */;
@property (retain) NSArray<NSString*>*                              companies           /* EWSArrayOfStringsType */;
@property (retain) NSString*                                        contactSource       /* EWSContactSourceType */;
@property (retain) NSString*                                        department          /* xs:string */;
@property (retain) NSString*                                        generation          /* xs:string */;
@property (retain) NSArray<EWSImAddressDictionaryEntryType*>*       imAddresses         /* EWSImAddressDictionaryType */;
@property (retain) NSString*                                        jobTitle            /* xs:string */;
@property (retain) NSString*                                        manager             /* xs:string */;
@property (retain) NSString*                                        mileage             /* xs:string */;
@property (retain) NSString*                                        officeLocation      /* xs:string */;
@property (retain) NSString*                                        postalAddressIndex  /* EWSPhysicalAddressIndexType */;
@property (retain) NSString*                                        profession          /* xs:string */;
@property (retain) NSString*                                        spouseName          /* xs:string */;
@property (retain) NSString*                                        surname             /* xs:string */;
@property (retain) NSString*                                        weddingAnniversary  /* xs:dateTime */;


@end

