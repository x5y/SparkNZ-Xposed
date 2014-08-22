.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 124
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 882
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 355
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 356
    .local v2, "lastColon":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "dottedQuad":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 359
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 360
    const/4 v6, 0x0

    .line 364
    :goto_0
    return-object v6

    .line 362
    :cond_0
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "penultimate":Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static copyOfRange([BII)[B
    .locals 4
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 922
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    array-length v2, p0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 925
    .local v0, "end":I
    sub-int v2, p2, p1

    new-array v1, v2, [B

    .line 927
    .local v1, "result":[B
    const/4 v2, 0x0

    sub-int v3, v0, p1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    return-object v1
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    .local v0, "addr":[B
    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    :cond_0
    if-nez v0, :cond_1

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' is not an IP string literal."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 200
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' is extremely broken."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "hostAddr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    const/4 v3, 0x1

    .line 415
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    const-string v4, "host string is empty"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 417
    const/4 v0, 0x0

    .line 421
    .local v0, "retval":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 422
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 436
    .end local v0    # "retval":Ljava/net/InetAddress;
    .local v1, "retval":Ljava/net/InetAddress;
    :goto_1
    return-object v1

    .line 416
    .end local v1    # "retval":Ljava/net/InetAddress;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 425
    .restart local v0    # "retval":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 430
    :cond_1
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 431
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid address: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 435
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 436
    .end local v0    # "retval":Ljava/net/InetAddress;
    .restart local v1    # "retval":Ljava/net/InetAddress;
    goto :goto_1

    .line 439
    .end local v1    # "retval":Ljava/net/InetAddress;
    .restart local v0    # "retval":Ljava/net/InetAddress;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid address: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 893
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 909
    array-length v2, p0

    new-array v1, v2, [B

    .line 910
    .local v1, "reversed":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 911
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 543
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 10
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/16 v9, 0xf

    .line 795
    instance-of v7, p0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 796
    check-cast p0, Ljava/net/Inet4Address;

    .line 836
    .end local p0    # "ip":Ljava/net/InetAddress;
    .local v2, "bytes":[B
    .local v4, "i":I
    .local v6, "leadingBytesOfZero":Z
    :goto_0
    return-object p0

    .line 800
    .end local v2    # "bytes":[B
    .end local v4    # "i":I
    .end local v6    # "leadingBytesOfZero":Z
    .restart local p0    # "ip":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 801
    .restart local v2    # "bytes":[B
    const/4 v6, 0x1

    .line 802
    .restart local v6    # "leadingBytesOfZero":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 803
    aget-byte v7, v2, v4

    if-eqz v7, :cond_2

    .line 804
    const/4 v6, 0x0

    .line 808
    :cond_1
    if-eqz v6, :cond_3

    aget-byte v7, v2, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 809
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_0

    .line 802
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 810
    :cond_3
    if-eqz v6, :cond_4

    aget-byte v7, v2, v9

    if-nez v7, :cond_4

    .line 811
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_4
    move-object v5, p0

    .line 814
    check-cast v5, Ljava/net/Inet6Address;

    .line 815
    .local v5, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v0, 0x0

    .line 816
    .local v0, "addressAsLong":J
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 817
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Inet4Address;->hashCode()I

    move-result v7

    int-to-long v0, v7

    .line 825
    :goto_2
    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->hash64To32(J)I

    move-result v3

    .line 828
    .local v3, "coercedHash":I
    const/high16 v7, -0x20000000

    or-int/2addr v3, v7

    .line 832
    const/4 v7, -0x1

    if-ne v3, v7, :cond_5

    .line 833
    const/4 v3, -0x2

    .line 836
    :cond_5
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_0

    .line 821
    .end local v3    # "coercedHash":I
    :cond_6
    invoke-virtual {v5}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_2
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 757
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' has no embedded IPv4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    array-length v2, p0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Byte array has invalid length for an IPv4 address: %s != 4."

    new-array v6, v3, [Ljava/lang/Object;

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 147
    .local v1, "ipv4":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-nez v2, :cond_1

    .line 148
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v5, "\'%s\' is not an IPv4 address."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "ipv4":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Host address \'%s\' is not a valid IPv4 address."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    move v2, v4

    .line 141
    goto :goto_0

    .line 153
    .restart local v1    # "ipv4":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    check-cast v1, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "ipv4":Ljava/net/InetAddress;
    return-object v1
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 717
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 720
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 14
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const v13, 0xffff

    const/16 v12, 0x8

    .line 649
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    const-string v8, "Address \'%s\' is not a Teredo address."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 653
    .local v0, "bytes":[B
    const/4 v7, 0x4

    invoke-static {v0, v7, v12}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    .line 655
    .local v6, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v12}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    and-int v3, v7, v13

    .line 658
    .local v3, "flags":I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    xor-int/lit8 v7, v7, -0x1

    and-int v5, v7, v13

    .line 660
    .local v5, "port":I
    const/16 v7, 0xc

    const/16 v8, 0x10

    invoke-static {v0, v7, v8}, Lcom/google/common/net/InetAddresses;->copyOfRange([BII)[B

    move-result-object v2

    .line 661
    .local v2, "clientBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 663
    aget-byte v7, v2, v4

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 661
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    :cond_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 667
    .local v1, "client":Ljava/net/Inet4Address;
    new-instance v7, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v7
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 737
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hash64To32(J)I
    .locals 4
    .param p0, "key"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 851
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p0

    const/16 v2, 0x12

    shl-long v2, p0, v2

    add-long p0, v0, v2

    .line 852
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 853
    const-wide/16 v0, 0x15

    mul-long/2addr p0, v0

    .line 854
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 855
    const/4 v0, 0x6

    shl-long v0, p0, v0

    add-long/2addr p0, v0

    .line 856
    const/16 v0, 0x16

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 857
    long-to-int v0, p0

    return v0
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 529
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 530
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 484
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v1

    .line 488
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 489
    .local v0, "bytes":[B
    const/16 v3, 0xc

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    aget-byte v3, v0, v4

    if-eqz v3, :cond_0

    aget-byte v3, v0, v4

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 494
    goto :goto_0
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 228
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x0

    .line 690
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 694
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 696
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 703
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 634
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 635
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    if-ne v3, v1, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 451
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    const/4 v1, 0x1

    .line 454
    :goto_0
    return v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    .line 236
    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 269
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "address":[Ljava/lang/String;
    array-length v6, v0

    if-eq v6, v7, :cond_2

    move-object v1, v5

    .line 245
    goto :goto_0

    .line 248
    :cond_2
    new-array v1, v7, [B

    .line 250
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 251
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 252
    .local v4, "piece":I
    if-ltz v4, :cond_3

    const/16 v6, 0xff

    if-le v4, v6, :cond_4

    :cond_3
    move-object v1, v5

    .line 253
    goto :goto_0

    .line 260
    :cond_4
    aget-object v6, v0, v3

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    move-object v1, v5

    .line 261
    goto :goto_0

    .line 263
    :cond_5
    int-to-byte v6, v4

    aput-byte v6, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 265
    .end local v4    # "piece":I
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NumberFormatException;
    move-object v1, v5

    .line 266
    goto :goto_0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 14
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v11, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 274
    const/4 v11, 0x0

    .line 351
    :goto_0
    return-object v11

    .line 276
    :cond_0
    const-string v11, ":::"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 277
    const/4 v11, 0x0

    goto :goto_0

    .line 280
    :cond_1
    const-string v11, "."

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 281
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 282
    if-nez p0, :cond_2

    .line 283
    const/4 v11, 0x0

    goto :goto_0

    .line 287
    :cond_2
    const/16 v11, 0x10

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 290
    .local v9, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 291
    .local v5, "partsHi":I
    const/4 v7, 0x0

    .line 293
    .local v7, "partsLo":I
    const-string v11, "::"

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "addressHalves":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v0, v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 296
    const/4 v11, 0x0

    aget-object v11, v0, v11

    const-string v12, ":"

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    array-length v11, v4

    if-ge v3, v11, :cond_4

    .line 299
    aget-object v11, v4, v3

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 301
    const/4 v11, 0x0

    goto :goto_0

    .line 303
    :cond_3
    aget-object v11, v4, v3

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 304
    .local v8, "piece":I
    mul-int/lit8 v11, v3, 0x2

    int-to-short v12, v8

    invoke-virtual {v9, v11, v12}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    .end local v8    # "piece":I
    :cond_4
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v3    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    :goto_2
    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 318
    const/4 v11, 0x1

    aget-object v11, v0, v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 319
    const/4 v11, 0x1

    aget-object v11, v0, v11

    const-string v12, ":"

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .restart local v4    # "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    :try_start_1
    array-length v11, v4

    if-ge v3, v11, :cond_7

    .line 322
    array-length v11, v4

    sub-int/2addr v11, v3

    add-int/lit8 v6, v11, -0x1

    .line 323
    .local v6, "partsIndex":I
    aget-object v11, v4, v6

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 325
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 307
    .end local v6    # "partsIndex":I
    :catch_0
    move-exception v2

    .line 308
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 312
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    .line 327
    .restart local v3    # "i":I
    .restart local v4    # "parts":[Ljava/lang/String;
    .restart local v6    # "partsIndex":I
    :cond_6
    aget-object v11, v4, v6

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 328
    .restart local v8    # "piece":I
    rsub-int/lit8 v11, v3, 0x8

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v1, v11, 0x2

    .line 329
    .local v1, "bytesIndex":I
    int-to-short v11, v8

    invoke-virtual {v9, v1, v11}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 331
    .end local v1    # "bytesIndex":I
    .end local v6    # "partsIndex":I
    .end local v8    # "piece":I
    :cond_7
    array-length v7, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    .end local v3    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_8
    :goto_4
    add-int v10, v5, v7

    .line 343
    .local v10, "totalParts":I
    const/16 v11, 0x8

    if-le v10, v11, :cond_a

    .line 344
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 332
    .end local v10    # "totalParts":I
    .restart local v3    # "i":I
    .restart local v4    # "parts":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 333
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 337
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_9
    const/4 v7, 0x1

    goto :goto_4

    .line 346
    .restart local v10    # "totalParts":I
    :cond_a
    array-length v11, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/16 v11, 0x8

    if-eq v10, v11, :cond_b

    .line 348
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 351
    :cond_b
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    goto/16 :goto_0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 393
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
