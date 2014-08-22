.class abstract Lcom/adobe/adms/measurement/ADMS_MeasurementBase;
.super Ljava/lang/Object;
.source "ADMS_MeasurementBase.java"


# static fields
.field private static final encodedChars:[Ljava/lang/String;

.field private static final keyReplacements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final prefixReplacements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final validKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final validLightParameters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appSection:Ljava/lang/String;

.field private appState:Ljava/lang/String;

.field private campaign:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private charSet:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field protected customVisitorID:Ljava/lang/String;

.field protected dataCenter:Ljava/lang/String;

.field protected debugLogging:Z

.field protected evarMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/lang/String;

.field private geoState:Ljava/lang/String;

.field private geoZip:Ljava/lang/String;

.field protected hierMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isOffline:Z

.field private lightIncrementBy:I

.field private lightProfileID:Ljava/lang/String;

.field private lightStoreForSeconds:I

.field private lightTrackVars:Ljava/lang/String;

.field private linkName:Ljava/lang/String;

.field private linkTrackEvents:Ljava/lang/String;

.field private linkTrackVars:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkURL:Ljava/lang/String;

.field protected listMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected offlineHitLimit:I

.field protected offlineTrackingEnabled:Z

.field protected persistentContextData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected pevMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private products:Ljava/lang/String;

.field protected propMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseID:Ljava/lang/String;

.field private reportSuiteIDs:Ljava/lang/String;

.field private secRandom:Ljava/security/SecureRandom;

.field protected ssl:Z

.field protected timestamp:J

.field private trackingServer:Ljava/lang/String;

.field private transactionID:Ljava/lang/String;

.field protected userAgent:Ljava/lang/String;

.field protected version:Ljava/lang/String;

.field protected visitorID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;

    invoke-direct {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$1;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/HashMap;

    .line 80
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;

    invoke-direct {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$2;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/HashMap;

    .line 113
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;

    invoke-direct {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$3;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/HashSet;

    .line 158
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;

    invoke-direct {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase$4;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/HashSet;

    .line 178
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "%08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%0A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "%0B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "%0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "%0D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "%0E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "%0F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "%10"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "%11"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "%12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "%13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "%14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "%15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "%16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "%17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "%18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "%19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "%1A"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "%1B"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "%1C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "%1D"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "%1E"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%1F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "%20"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "%21"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "%22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "%23"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "%24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "%25"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "%26"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "%27"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "%28"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "%29"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "%2B"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "%2C"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "%2F"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "%3A"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "%3B"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "%3C"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "%3D"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "%3E"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "%3F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "%40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "%5B"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "%5C"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "%5D"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "%5E"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "%60"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "%7B"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "%7C"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "%7D"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "%7E"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%7F"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "%80"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "%81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "%82"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "%83"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "%84"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "%85"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "%86"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "%87"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "%88"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "%89"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "%8A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "%8B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "%8C"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "%8D"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "%8E"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "%8F"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "%90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "%91"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "%92"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "%93"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "%94"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "%95"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "%96"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "%97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "%98"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "%99"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "%9A"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "%9B"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "%9C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "%9D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "%9E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "%9F"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "%A0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "%A1"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "%A2"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "%A3"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "%A4"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "%A5"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "%A6"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "%A7"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "%A8"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%A9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "%AA"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "%AB"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "%AC"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "%AD"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "%AE"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "%AF"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "%B0"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "%B1"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%B2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "%B3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "%B4"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "%B5"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "%B6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "%B7"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "%B8"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "%B9"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "%BA"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "%BB"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "%BC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "%BD"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "%BE"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "%BF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "%C0"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "%C1"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "%C2"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "%C3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "%C4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "%C5"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "%C6"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "%C7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "%C8"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "%C9"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "%CA"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "%CB"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "%CC"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "%CD"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "%CE"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "%CF"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "%D0"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "%D1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "%D2"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "%D3"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "%D4"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "%D5"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "%D6"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "%D7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "%D8"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "%D9"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "%DA"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "%DB"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "%DC"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "%DD"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "%DE"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "%DF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "%E0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "%E1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "%E2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "%E3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "%E4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "%E5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "%E6"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "%E7"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "%E8"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "%E9"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "%EA"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "%EB"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "%EC"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "%ED"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "%EE"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "%EF"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "%F0"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "%F1"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "%F2"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "%F3"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "%F4"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "%F5"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "%F6"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "%F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "%F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "%F9"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "%FA"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "%FB"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "%FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "%FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "%FE"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "%FF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->encodedChars:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 27
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 28
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 33
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 46
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 62
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 198
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->userAgent:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    .line 201
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 204
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1096
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setupDefaults()V

    .line 1097
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "reportSuiteIDs"    # Ljava/lang/String;
    .param p2, "trackingServer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 27
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 28
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 33
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 46
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 62
    iput v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 198
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->userAgent:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    .line 201
    iput-boolean v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isOffline:Z

    .line 204
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1101
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setupDefaults()V

    .line 1102
    return-void
.end method

.method private final addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/List;I)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "table"    # Lcom/adobe/adms/measurement/ADMS_ContextData;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/adobe/adms/measurement/ADMS_ContextData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1525
    .local p3, "subKeyArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1526
    .local v0, "arrayCount":I
    if-ge p4, v0, :cond_0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 1527
    .local v2, "keyName":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 1545
    :goto_1
    return-void

    .line 1526
    .end local v2    # "keyName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1531
    .restart local v2    # "keyName":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/adobe/adms/measurement/ADMS_ContextData;

    invoke-direct {v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;-><init>()V

    .line 1532
    .local v1, "data":Lcom/adobe/adms/measurement/ADMS_ContextData;
    invoke-virtual {p2, v2}, Lcom/adobe/adms/measurement/ADMS_ContextData;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1533
    invoke-virtual {p2, v2}, Lcom/adobe/adms/measurement/ADMS_ContextData;->get(Ljava/lang/String;)Lcom/adobe/adms/measurement/ADMS_ContextData;

    move-result-object v1

    .line 1535
    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ne v3, p4, :cond_3

    .line 1537
    iput-object p1, v1, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    .line 1538
    invoke-virtual {p2, v2, v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;->put(Ljava/lang/String;Lcom/adobe/adms/measurement/ADMS_ContextData;)V

    goto :goto_1

    .line 1542
    :cond_3
    invoke-virtual {p2, v2, v1}, Lcom/adobe/adms/measurement/ADMS_ContextData;->put(Ljava/lang/String;Lcom/adobe/adms/measurement/ADMS_ContextData;)V

    .line 1543
    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/List;I)V

    goto :goto_1
.end method

.method private final isInteger(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1894
    :try_start_0
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1897
    :cond_0
    :goto_0
    return v0

    .line 1895
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final isString(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1882
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1885
    :cond_0
    :goto_0
    return v0

    .line 1883
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static final join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1943
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1945
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1947
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1948
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1954
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1952
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1889
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    return-object p1
.end method


# virtual methods
.method protected final addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1739
    .local p1, "masterArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "slaveArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1740
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1742
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected final cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 1963
    .end local p1    # "string":Ljava/lang/String;
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1962
    .end local v0    # "string":Ljava/lang/String;
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1963
    .end local p1    # "string":Ljava/lang/String;
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method protected final cleanContextKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1724
    const-string v0, "[^a-zA-Z0-9.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1726
    return-object p1
.end method

.method protected final cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1701
    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1702
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1703
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1704
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1705
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1707
    .local v2, "numVal":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->prefixReplacements:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1719
    .end local v2    # "numVal":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1710
    .restart local v2    # "numVal":Ljava/lang/String;
    .restart local v3    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v4, p1

    .line 1711
    goto :goto_0

    .line 1716
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "numVal":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->replaceKeyWithADMSKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 1719
    goto :goto_0
.end method

.method public abstract clearTrackingQueue()V
.end method

.method public final clearVars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->resetSingleUseParameters()V

    .line 511
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 514
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 515
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 516
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 517
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 518
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 519
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 521
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 522
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 524
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 525
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 526
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 529
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 530
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 531
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 533
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 534
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final configureMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reportSuiteIDs"    # Ljava/lang/String;
    .param p2, "trackingServer"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setReportSuiteIDs(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setTrackingServer(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method protected abstract debugLog(Ljava/lang/String;)V
.end method

.method protected final filterLightTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v5, "tempLightTrackVars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v1, "constLightTrackVars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1307
    iget-object v9, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    const-string v10, "[,]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1310
    :cond_0
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 1311
    .local v8, "varObjs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_3

    .line 1312
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1313
    .local v7, "varKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1314
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1315
    .local v3, "key":Ljava/lang/String;
    const-string v9, "lightTrackVars"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1316
    const-string v9, "lightTrackVars"

    invoke-virtual {p3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1317
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1319
    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1320
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1321
    const-string v9, "[,]"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1325
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "cleanKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightParameterIsValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1327
    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1332
    .end local v0    # "cleanKey":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "varKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0, v5, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1333
    invoke-virtual {p0, p1, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1335
    const/4 v2, 0x0

    .line 1336
    .local v2, "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1337
    sget-object v9, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->requiredLightVarList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1339
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 1340
    .local v4, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1341
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1342
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1343
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1347
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1350
    .end local v4    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1351
    return-void
.end method

.method protected final filterLinkTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v14, "tempLinkTrackVars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v4, "constLinkTrackVars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1364
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v13, "tempLinkTrackEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1369
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v7, "eventsToSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "[,]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1374
    :cond_2
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 1375
    .local v17, "varObjs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_7

    .line 1376
    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v16

    .line 1377
    .local v16, "varKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1378
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1379
    .local v10, "key":Ljava/lang/String;
    const-string v18, "linkTrackEvents"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1380
    const-string v18, "linkTrackEvents"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1381
    .local v15, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1383
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1384
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1385
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1389
    .end local v15    # "value":Ljava/lang/String;
    :cond_4
    const-string v18, "events"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1390
    const-string v18, "events"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1391
    .restart local v15    # "value":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1393
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1394
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1395
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1399
    .end local v15    # "value":Ljava/lang/String;
    :cond_5
    const-string v18, "linkTrackVars"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1400
    const-string v18, "linkTrackVars"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1401
    .restart local v15    # "value":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1403
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1404
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1405
    const-string v18, "[,]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1410
    .end local v15    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1411
    .local v3, "cleanKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->parameterKeyIsValid(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1412
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1417
    .end local v3    # "cleanKey":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v16    # "varKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addAllParameters(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1419
    const/4 v5, 0x0

    .line 1421
    .local v5, "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 1422
    .local v12, "peValue":Ljava/lang/String;
    const-string v18, "pe"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1423
    const-string v18, "pe"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "peValue":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1425
    .restart local v12    # "peValue":Ljava/lang/String;
    :cond_8
    if-eqz p3, :cond_9

    const-string v18, "pe"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1426
    const-string v18, "pe"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "peValue":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1429
    .restart local v12    # "peValue":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1430
    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_d

    .line 1431
    sget-object v18, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->requiredVarList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1433
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v11

    .line 1434
    .local v11, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_b
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1435
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1436
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1437
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1441
    .end local v10    # "key":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1444
    .end local v11    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 1445
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .local v8, "eventsToSendCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1447
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1448
    .local v6, "event":Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1449
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1455
    .end local v6    # "event":Ljava/lang/String;
    .end local v8    # "eventsToSendCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    .line 1457
    const-string v18, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1458
    return-void
.end method

.method protected final generateFilterArrayWithVars(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1461
    .local p1, "vars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v0, "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1463
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1464
    const-string v3, "contextdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1465
    const/4 v0, 0x0

    .line 1482
    .end local v0    # "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "string":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1468
    .restart local v0    # "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    const-string v3, "contextdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1473
    .end local v2    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1474
    const-string v3, "contextdata.a.CarrierName"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    const-string v3, "contextdata.a.OSVersion"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    const-string v3, "contextdata.a.DeviceName"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    const-string v3, "contextdata.a.Resolution"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1479
    :cond_3
    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final generateLightTrackParameters()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1189
    .local v0, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ce"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1190
    const-string v1, "mtp"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    const-string v1, "mtss"

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1192
    const-string v1, "mti"

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1194
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1195
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1197
    return-object v0
.end method

.method protected final generateTrackParameters()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1203
    .local v0, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1204
    const-string v1, "vid"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    :goto_0
    const-string v1, "ce"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1210
    const-string v1, "pageName"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    const-string v1, "cc"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1213
    const-string v1, "purchaseID"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1214
    const-string v1, "xact"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    const-string v1, "ch"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    const-string v1, "server"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1217
    const-string v1, "v0"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    const-string v1, "zip"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1219
    const-string v1, "state"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1220
    const-string v1, "products"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1222
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1223
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1224
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1225
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1226
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1228
    return-object v0

    .line 1206
    :cond_0
    const-string v1, "vid"

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getAppSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getApplicationID()Ljava/lang/String;
.end method

.method public final getCampaign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getCarrierString()Ljava/lang/String;
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getDefaultCharSet()Ljava/lang/String;
.end method

.method protected abstract getDefaultUserAgent()Ljava/lang/String;
.end method

.method public getEvar(I)Ljava/lang/String;
    .locals 3
    .param p1, "evarNum"    # I

    .prologue
    .line 412
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->evarValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    return-object v0
.end method

.method protected final getFullTrackingServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1917
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1918
    const-string v0, ""

    .line 1919
    .local v0, "reportSuiteID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    const-string v3, "[,]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1920
    .local v1, "rsids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1921
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "reportSuiteID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1925
    .restart local v0    # "reportSuiteID":Ljava/lang/String;
    :cond_0
    const-string v2, "."

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1926
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1927
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1928
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 1929
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    const-string v3, "dc2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    const-string v3, "122"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1930
    :cond_1
    const-string v2, "122"

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    .line 1936
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".2o7.net"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 1939
    .end local v0    # "reportSuiteID":Ljava/lang/String;
    .end local v1    # "rsids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    return-object v2

    .line 1933
    .restart local v0    # "reportSuiteID":Ljava/lang/String;
    .restart local v1    # "rsids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "112"

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->dataCenter:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getGeoState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeoZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    return-object v0
.end method

.method public final getHier(I)Ljava/lang/String;
    .locals 3
    .param p1, "hierNum"    # I

    .prologue
    .line 470
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->hierValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getLightIncrementBy()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    return v0
.end method

.method public final getLightProfileID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLightStoreForSeconds()I
    .locals 1

    .prologue
    .line 1593
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    return v0
.end method

.method public final getLightTrackVars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkTrackEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkTrackVars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLinkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLinkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getListVar(I)Ljava/lang/String;
    .locals 3
    .param p1, "listNum"    # I

    .prologue
    .line 499
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->listValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getNetworkConnectionString()Ljava/lang/String;
.end method

.method public final getOfflineHitLimit()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    return v0
.end method

.method public final getOfflineThrottleDelay()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getOperatingSystemString()Ljava/lang/String;
.end method

.method public final getPersistentContextData()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, "copiedHashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "copiedHashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/Hashtable;

    .line 944
    .restart local v0    # "copiedHashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v0
.end method

.method protected abstract getPlatformString()Ljava/lang/String;
.end method

.method public final getProducts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    return-object v0
.end method

.method public final getProp(I)Ljava/lang/String;
    .locals 3
    .param p1, "propNum"    # I

    .prologue
    .line 441
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->propValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPurchaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getReportSuiteIDs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1129
    invoke-virtual {p0, v0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1134
    const/4 v5, 0x0

    .line 1150
    :goto_0
    return-object v5

    .line 1137
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getTrackingParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    .line 1138
    .local v1, "parameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hit Parameters : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1140
    const/4 v3, 0x0

    .line 1141
    .local v3, "randomNumber":I
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    if-eqz v7, :cond_1

    .line 1142
    iget-object v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    const v8, 0x5f5e100

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 1144
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "cacheBusting":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    .local v2, "parametersSerialized":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getFullTrackingServer()Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, "trackServer":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    if-eqz v7, :cond_2

    const-string v4, "https"

    .line 1148
    .local v4, "requestProtocol":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/b/ss/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?AQB=1&ndh=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&AQE=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1150
    .local v5, "requestString":Ljava/lang/String;
    goto/16 :goto_0

    .line 1147
    .end local v4    # "requestProtocol":Ljava/lang/String;
    .end local v5    # "requestString":Ljava/lang/String;
    :cond_2
    const-string v4, "http"

    goto :goto_1
.end method

.method protected abstract getResolutionString()Ljava/lang/String;
.end method

.method protected final getTime()D
    .locals 3

    .prologue
    .line 1610
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1611
    .local v0, "tm":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    return-wide v1
.end method

.method protected final getTrackingParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1158
    .local v0, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateTechnology()V

    .line 1160
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateLightTrackParameters()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1162
    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->filterLightTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1163
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateRequiredLightVariables(Ljava/util/Hashtable;)V

    .line 1170
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateTimestamps(Ljava/util/Hashtable;)V

    .line 1171
    return-object v0

    .line 1165
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateLinkTracking(Ljava/util/Hashtable;)V

    .line 1166
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->generateTrackParameters()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1167
    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->filterLinkTrackParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 1168
    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validateRequiredVariables(Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method public abstract getTrackingQueueSize()I
.end method

.method public final getTrackingServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getVisitorID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final handlePersistentContextData(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1486
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "contextFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1487
    .local v0, "contextWithOverrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1488
    if-eqz p2, :cond_0

    .line 1489
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1490
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1491
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1492
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1493
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanContextKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1497
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    const-string v4, "c"

    invoke-virtual {p0, v0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->translateContextData(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/adms/measurement/ADMS_ContextData;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1498
    return-void
.end method

.method protected final isBoolean(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1906
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1909
    :cond_0
    :goto_0
    return v0

    .line 1907
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final isOfflineTrackingEnabled()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    return v0
.end method

.method protected final isSet(D)Z
    .locals 2
    .param p1, "val"    # D

    .prologue
    .line 1850
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 1851
    const/4 v0, 0x0

    .line 1853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isSet(F)Z
    .locals 4
    .param p1, "val"    # F

    .prologue
    .line 1843
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1844
    const/4 v0, 0x0

    .line 1846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isSet(I)Z
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 1836
    if-nez p1, :cond_0

    .line 1837
    const/4 v0, 0x0

    .line 1839
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isSet(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 1867
    if-nez p1, :cond_0

    .line 1868
    const/4 v0, 0x0

    .line 1876
    :goto_0
    return v0

    .line 1869
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1871
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1872
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toInteger(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(I)Z

    move-result v0

    goto :goto_0

    .line 1873
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1874
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Z)Z

    move-result v0

    goto :goto_0

    .line 1876
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isSet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1857
    if-nez p1, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return v0

    .line 1860
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isSet(Z)Z
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1832
    return p1
.end method

.method protected final lightParameterIsValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1354
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validLightParameters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final parameterKeyIsValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1615
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->validKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "trackOverrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 1661
    return-void
.end method

.method protected final putAllParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 4
    .param p3, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1664
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "trackOverrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 1665
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1666
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1668
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1669
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1672
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final putAllStringParameters(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1683
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "trackOverrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1684
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1685
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1686
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1687
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1689
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final putContextData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1675
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1620
    return-void
.end method

.method protected final putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1632
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1633
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1637
    :cond_1
    const/4 v0, 0x1

    .line 1638
    .local v0, "valid":Z
    if-eqz p4, :cond_2

    .line 1639
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanParameterKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1640
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->parameterKeyIsValid(Ljava/lang/String;)Z

    move-result v0

    .line 1642
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1643
    instance-of v3, p3, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object v1, p3

    .line 1644
    check-cast v1, Ljava/util/ArrayList;

    .line 1645
    .local v1, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1649
    .end local v1    # "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :cond_3
    instance-of v3, p3, Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    move-object v2, p3

    .line 1650
    check-cast v2, Ljava/util/Hashtable;

    .line 1651
    .local v2, "valueTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    .end local v2    # "valueTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    :cond_4
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p1, "stringParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :goto_0
    return-void

    .line 1628
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final replaceKeyWithADMSKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1730
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "lowerCaseKey":Ljava/lang/String;
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->keyReplacements:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1734
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected final resetSingleUseParameters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 1176
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 1177
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1179
    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1180
    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 1181
    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 1183
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1184
    return-void
.end method

.method protected abstract saveVisitorID(Ljava/lang/String;)V
.end method

.method protected abstract sendRequest(Ljava/lang/String;)V
.end method

.method protected final serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1746
    .local p1, "parameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0x400

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1748
    .local v6, "returnVal":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1749
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1750
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1752
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1753
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1755
    .local v4, "obj":Ljava/lang/Object;
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v7, v4

    .line 1756
    check-cast v7, Ljava/lang/String;

    .line 1758
    .local v7, "value":Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1762
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    instance-of v9, v4, Lcom/adobe/adms/measurement/ADMS_ContextData;

    if-eqz v9, :cond_4

    .line 1763
    const/4 v8, 0x0

    .local v8, "valueAdded":Z
    move-object v0, v4

    .line 1764
    check-cast v0, Lcom/adobe/adms/measurement/ADMS_ContextData;

    .line 1765
    .local v0, "data":Lcom/adobe/adms/measurement/ADMS_ContextData;
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1766
    const/4 v8, 0x1

    .line 1767
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_2
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1773
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->contextData:Ljava/util/Hashtable;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->serializeToQueryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    const-string v9, "&."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1780
    :cond_3
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v8, :cond_0

    .line 1781
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    iget-object v9, v0, Lcom/adobe/adms/measurement/ADMS_ContextData;->value:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1787
    .end local v0    # "data":Lcom/adobe/adms/measurement/ADMS_ContextData;
    .end local v8    # "valueAdded":Z
    :cond_4
    instance-of v9, v4, Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    move-object v5, v4

    .line 1788
    check-cast v5, Ljava/util/ArrayList;

    .line 1789
    .local v5, "objValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1790
    const-string v9, ","

    invoke-static {v5, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1791
    .restart local v7    # "value":Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1797
    .end local v5    # "objValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1798
    .restart local v7    # "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Object for parameter \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "We recommend using strings where possible, but we are sending this parameter with a value of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1800
    const-string v9, "If you would like another value for this parameter please send the value as a string the way you would like it to appear."

    invoke-virtual {p0, v9}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 1801
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-virtual {p0, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1807
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public final setAppSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSection"    # Ljava/lang/String;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appSection:Ljava/lang/String;

    .line 860
    return-void
.end method

.method public final setAppState(Ljava/lang/String;)V
    .locals 0
    .param p1, "appState"    # Ljava/lang/String;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->appState:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public final setCampaign(Ljava/lang/String;)V
    .locals 0
    .param p1, "campaign"    # Ljava/lang/String;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->campaign:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->channel:Ljava/lang/String;

    .line 837
    return-void
.end method

.method public final setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->charSet:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->currencyCode:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public final setDebugLogging(Z)V
    .locals 0
    .param p1, "debugLogging"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    .line 698
    return-void
.end method

.method public final setEvar(ILjava/lang/String;)V
    .locals 3
    .param p1, "evarNum"    # I
    .param p2, "evarValue"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->evarValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final setEvents(Ljava/lang/String;)V
    .locals 1
    .param p1, "events"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->events:Ljava/lang/String;

    .line 928
    return-void
.end method

.method public final setGeoState(Ljava/lang/String;)V
    .locals 0
    .param p1, "geoState"    # Ljava/lang/String;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoState:Ljava/lang/String;

    .line 1010
    return-void
.end method

.method public final setGeoZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "geoZip"    # Ljava/lang/String;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->geoZip:Ljava/lang/String;

    .line 989
    return-void
.end method

.method public final setHier(ILjava/lang/String;)V
    .locals 3
    .param p1, "hierNum"    # I
    .param p2, "hierValue"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->hierValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected final setLightIncrementBy(I)V
    .locals 0
    .param p1, "lightIncrementBy"    # I

    .prologue
    .line 1605
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightIncrementBy:I

    .line 1606
    return-void
.end method

.method protected final setLightProfileID(Ljava/lang/String;)V
    .locals 0
    .param p1, "lightProfileID"    # Ljava/lang/String;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightProfileID:Ljava/lang/String;

    .line 1590
    return-void
.end method

.method protected final setLightStoreForSeconds(I)V
    .locals 0
    .param p1, "lightStoreForSeconds"    # I

    .prologue
    .line 1597
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightStoreForSeconds:I

    .line 1598
    return-void
.end method

.method public final setLightTrackVars(Ljava/lang/String;)V
    .locals 1
    .param p1, "lightTrackVars"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->lightTrackVars:Ljava/lang/String;

    .line 1089
    return-void
.end method

.method protected final setLinkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkName"    # Ljava/lang/String;

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    .line 1574
    return-void
.end method

.method public final setLinkTrackEvents(Ljava/lang/String;)V
    .locals 1
    .param p1, "linkTrackEvents"    # Ljava/lang/String;

    .prologue
    .line 1062
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackEvents:Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public final setLinkTrackVars(Ljava/lang/String;)V
    .locals 1
    .param p1, "linkTrackVars"    # Ljava/lang/String;

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkTrackVars:Ljava/lang/String;

    .line 1037
    return-void
.end method

.method protected final setLinkType(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkType"    # Ljava/lang/String;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1582
    return-void
.end method

.method protected final setLinkURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkURL"    # Ljava/lang/String;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    .line 1566
    return-void
.end method

.method public final setListVar(ILjava/lang/String;)V
    .locals 3
    .param p1, "listNum"    # I
    .param p2, "listValue"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->listValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public abstract setOffline()V
.end method

.method public abstract setOfflineHitLimit(I)V
.end method

.method public abstract setOfflineThrottleDelay(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setOfflineTrackingEnabled(Z)V
.end method

.method public abstract setOnline()V
.end method

.method public final setPersistentContextData(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "pContextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 956
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 959
    :cond_0
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 960
    if-eqz p1, :cond_1

    .line 961
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 962
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 965
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanContextKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 968
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public final setProducts(Ljava/lang/String;)V
    .locals 3
    .param p1, "products"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-string v0, ", "

    const-string v1, ","

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    const-string v1, " ,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->products:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setProp(ILjava/lang/String;)V
    .locals 3
    .param p1, "propNum"    # I
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->propValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putStringParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final setPurchaseID(Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseID"    # Ljava/lang/String;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->purchaseID:Ljava/lang/String;

    .line 772
    return-void
.end method

.method public final declared-synchronized setReportSuiteIDs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reportSuiteIDs"    # Ljava/lang/String;

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->cleanCommaDelimitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSSL(Z)V
    .locals 0
    .param p1, "ssl"    # Z

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 685
    return-void
.end method

.method public final setTrackingServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingServer"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public final setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->transactionID:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public final declared-synchronized setVisitorID(Ljava/lang/String;)V
    .locals 1
    .param p1, "visitorID"    # Ljava/lang/String;

    .prologue
    .line 622
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :goto_0
    monitor-exit p0

    return-void

    .line 626
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->customVisitorID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final setupDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1105
    const-string v1, "JAVA-3.1.0-AN"

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->version:Ljava/lang/String;

    .line 1107
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->evarMap:Ljava/util/Hashtable;

    .line 1108
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->propMap:Ljava/util/Hashtable;

    .line 1109
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->pevMap:Ljava/util/Hashtable;

    .line 1110
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->hierMap:Ljava/util/Hashtable;

    .line 1111
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->listMap:Ljava/util/Hashtable;

    .line 1112
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    .line 1114
    iput-boolean v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    .line 1115
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineHitLimit:I

    .line 1117
    iput-boolean v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->ssl:Z

    .line 1118
    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackingServer:Ljava/lang/String;

    .line 1121
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iput-object v3, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->secRandom:Ljava/security/SecureRandom;

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create secure random number generator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final toBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1913
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final toInteger(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1901
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final track()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;)V

    .line 305
    return-void
.end method

.method public final track(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 317
    return-void
.end method

.method public final track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->reportSuiteIDs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    monitor-exit p0

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getRequestString(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->sendRequest(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->resetSingleUseParameters()V

    .line 336
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final trackAppState(Ljava/lang/String;)V
    .locals 1
    .param p1, "appState"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackAppState(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 251
    return-void
.end method

.method public final trackAppState(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "appState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 266
    .local v0, "overrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "pageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p0, p2, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 268
    return-void
.end method

.method public final trackEvents(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventNames"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackEvents(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 280
    return-void
.end method

.method public final trackEvents(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "eventNames"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 294
    .local v5, "overrides":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "events"

    invoke-virtual {v5, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/4 v1, 0x0

    const-string v2, "o"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getApplicationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Event"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 296
    return-void
.end method

.method public final trackLight(Ljava/lang/String;IILjava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "lightProfileID"    # Ljava/lang/String;
    .param p2, "lightStoreForSeconds"    # I
    .param p3, "incrementBy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p4, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightProfileID(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightStoreForSeconds(I)V

    .line 384
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLightIncrementBy(I)V

    .line 386
    invoke-virtual {p0, p4, p5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 387
    return-void
.end method

.method public final trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "linkURL"    # Ljava/lang/String;
    .param p2, "linkType"    # Ljava/lang/String;
    .param p3, "linkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p4, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "variables":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkURL(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkType(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, p3}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->setLinkName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p4, p5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->track(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 361
    return-void
.end method

.method protected final translateContextData(Ljava/util/Hashtable;Ljava/util/ArrayList;)Lcom/adobe/adms/measurement/ADMS_ContextData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/adms/measurement/ADMS_ContextData;"
        }
    .end annotation

    .prologue
    .line 1501
    .local p1, "dict":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/adobe/adms/measurement/ADMS_ContextData;

    invoke-direct {v5}, Lcom/adobe/adms/measurement/ADMS_ContextData;-><init>()V

    .line 1503
    .local v5, "tempContextData":Lcom/adobe/adms/measurement/ADMS_ContextData;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1504
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1505
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1506
    .local v1, "key":Ljava/lang/String;
    if-eqz p2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contextdata."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1510
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1512
    .local v4, "pos":I
    :goto_1
    const/16 v6, 0x2e

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "end":I
    if-ltz v0, :cond_2

    .line 1513
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    add-int/lit8 v4, v0, 0x1

    goto :goto_1

    .line 1516
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v5, v3, v7}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->addValueToHashtable(Ljava/lang/Object;Lcom/adobe/adms/measurement/ADMS_ContextData;Ljava/util/List;I)V

    goto :goto_0

    .line 1521
    .end local v0    # "end":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "pos":I
    :cond_3
    return-object v5
.end method

.method protected final urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "unencodedString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1811
    if-nez p1, :cond_0

    .line 1827
    :goto_0
    return-object v5

    .line 1816
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1817
    .local v4, "stringBytes":[B
    array-length v3, v4

    .line 1818
    .local v3, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v6, v3, 0x1

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1820
    .local v1, "encodedString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1821
    sget-object v6, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->encodedChars:[Ljava/lang/String;

    aget-byte v7, v4, v2

    and-int/lit16 v7, v7, 0xff

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1824
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1825
    .end local v1    # "encodedString":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "stringBytes":[B
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final validateLinkTracking(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1250
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1253
    const-string v0, "o"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    .line 1256
    :cond_1
    const-string v0, "pe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lnk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1257
    const-string v0, "pev1"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkURL:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1258
    const-string v0, "pev2"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->linkName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1260
    :cond_2
    return-void
.end method

.method protected final validateRequiredLightVariables(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ce"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    :cond_0
    return-void
.end method

.method protected final validateRequiredVariables(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    const-string v0, "vid"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->visitorID:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1235
    :cond_0
    const-string v0, "ce"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    const-string v0, "ce"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    :cond_1
    const-string v0, "pageName"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1239
    const-string v0, "pageName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1241
    :cond_2
    return-void
.end method

.method protected final validateTechnology()V
    .locals 3

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v1, "a.Resolution"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getResolutionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v1, "a.DeviceName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getPlatformString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v1, "a.OSVersion"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getOperatingSystemString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->persistentContextData:Ljava/util/Hashtable;

    const-string v1, "a.CarrierName"

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getCarrierString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    return-void
.end method

.method protected final validateTimestamps(Ljava/util/Hashtable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1270
    .local p1, "trackParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1271
    .local v7, "date":Ljava/util/Date;
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->offlineTrackingEnabled:Z

    if-eqz v0, :cond_1

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->getTime()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1273
    .local v10, "tsString":Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p0, p1, v0, v10}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1279
    .end local v10    # "tsString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1280
    .local v9, "tm":Ljava/util/Calendar;
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    mul-int/lit8 v6, v6, 0x3c

    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    mul-int/lit16 v6, v6, 0x3e8

    const/16 v12, 0xe

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v6, v12

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1299
    .local v8, "time":Ljava/lang/String;
    const-string v0, "t"

    invoke-virtual {p0, p1, v0, v8}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1301
    return-void

    .line 1274
    .end local v8    # "time":Ljava/lang/String;
    .end local v9    # "tm":Ljava/util/Calendar;
    :cond_1
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1275
    new-instance v7, Ljava/util/Date;

    .end local v7    # "date":Ljava/util/Date;
    iget-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1276
    .restart local v7    # "date":Ljava/util/Date;
    const-string v0, "ts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->putParameter(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
