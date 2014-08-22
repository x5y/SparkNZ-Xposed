.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field private static final INT_0:I = 0x30

.field private static final INT_BACKSLASH:I = 0x5c

.field private static final INT_U:I = 0x75

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private _appendByteEscape(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "escCode"    # I
    .param p3, "byteBuilder"    # Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .param p4, "ptr"    # I

    .prologue
    const/16 v2, 0x30

    .line 365
    invoke-virtual {p3, p4}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 366
    const/16 v1, 0x5c

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 367
    if-gez p2, :cond_1

    .line 368
    const/16 v1, 0x75

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 369
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 370
    shr-int/lit8 v0, p1, 0x8

    .line 371
    .local v0, "hi":I
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 372
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 373
    and-int/lit16 p1, p1, 0xff

    .line 378
    .end local v0    # "hi":I
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 379
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 383
    :goto_1
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v1

    return v1

    .line 375
    :cond_0
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 376
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0

    .line 381
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_1
.end method

.method private _appendNamedEscape(I[C)I
    .locals 2
    .param p1, "escCode"    # I
    .param p2, "quoteBuffer"    # [C

    .prologue
    .line 359
    const/4 v0, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    .line 360
    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumericEscape(I[C)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "quoteBuffer"    # [C

    .prologue
    .line 350
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 352
    const/4 v0, 0x4

    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 353
    const/4 v0, 0x5

    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 354
    const/4 v0, 0x6

    return v0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .param p1, "firstPart"    # I
    .param p2, "secondPart"    # I

    .prologue
    const v2, 0xdc00

    .line 392
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 400
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 404
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;
    .locals 4

    .prologue
    .line 80
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 81
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 83
    .local v0, "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    :goto_0
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    .end local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    invoke-direct {v0}, Lorg/codehaus/jackson/io/JsonStringEncoder;-><init>()V

    .line 85
    .restart local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-object v0

    .line 81
    .end local v0    # "enc":Lorg/codehaus/jackson/io/JsonStringEncoder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 259
    .local v0, "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 263
    :cond_0
    const/4 v3, 0x0

    .line 264
    .local v3, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 265
    .local v2, "inputEnd":I
    const/4 v7, 0x0

    .line 266
    .local v7, "outputPtr":I
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v5

    .line 267
    .local v5, "outputBuffer":[B
    array-length v6, v5

    .local v6, "outputEnd":I
    move v4, v3

    .line 270
    .end local v3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, v2, :cond_f

    .line 271
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":I
    move v4, v3

    .line 274
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_1
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_3

    .line 275
    if-lt v7, v6, :cond_1

    .line 276
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 277
    array-length v6, v5

    .line 278
    const/4 v7, 0x0

    .line 280
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v8, "outputPtr":I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 281
    if-lt v4, v2, :cond_2

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .line 339
    .end local v1    # "c":I
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_2
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v9, v7}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v9

    return-object v9

    .line 284
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v1    # "c":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_1

    .line 288
    :cond_3
    if-lt v7, v6, :cond_e

    .line 289
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 290
    array-length v6, v5

    .line 291
    const/4 v7, 0x0

    move v8, v7

    .line 293
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_3
    const/16 v9, 0x800

    if-ge v1, v9, :cond_5

    .line 294
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 332
    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_4
    if-lt v7, v6, :cond_4

    .line 333
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 334
    array-length v6, v5

    .line 335
    const/4 v7, 0x0

    .line 337
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, v3

    .line 338
    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 297
    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_5
    const v9, 0xd800

    if-lt v1, v9, :cond_6

    const v9, 0xdfff

    if-le v1, v9, :cond_8

    .line 298
    :cond_6
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 299
    if-lt v7, v6, :cond_7

    .line 300
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 301
    array-length v6, v5

    .line 302
    const/4 v7, 0x0

    .line 304
    :cond_7
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_4

    .line 306
    .end local v3    # "inputPtr":I
    .end local v7    # "outputPtr":I
    .restart local v4    # "inputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_8
    const v9, 0xdbff

    if-le v1, v9, :cond_9

    .line 307
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 310
    :cond_9
    if-lt v4, v2, :cond_a

    .line 311
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 313
    :cond_a
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v1, v9}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 314
    const v9, 0x10ffff

    if-le v1, v9, :cond_b

    .line 315
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 317
    :cond_b
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 318
    if-lt v7, v6, :cond_c

    .line 319
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 320
    array-length v6, v5

    .line 321
    const/4 v7, 0x0

    .line 323
    :cond_c
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 324
    if-lt v8, v6, :cond_d

    .line 325
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 326
    array-length v6, v5

    .line 327
    const/4 v7, 0x0

    .line 329
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :goto_5
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto/16 :goto_4

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_d
    move v7, v8

    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    goto :goto_5

    .end local v3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_e
    move v8, v7

    .end local v7    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_3

    .end local v1    # "c":I
    .end local v8    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    :cond_f
    move v3, v4

    .end local v4    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_2
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 19
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    move-object/from16 v16, v0

    .line 103
    .local v16, "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    if-nez v16, :cond_0

    .line 105
    new-instance v16, Lorg/codehaus/jackson/util/TextBuffer;

    .end local v16    # "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v16    # "textBuffer":Lorg/codehaus/jackson/util/TextBuffer;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 107
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v14

    .line 108
    .local v14, "outputBuffer":[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 109
    .local v6, "escCodes":[I
    array-length v5, v6

    .line 110
    .local v5, "escCodeCount":I
    const/4 v8, 0x0

    .line 111
    .local v8, "inPtr":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 112
    .local v10, "inputLen":I
    const/4 v12, 0x0

    .line 115
    .local v12, "outPtr":I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 118
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 119
    .local v2, "c":C
    if-ge v2, v5, :cond_2

    aget v17, v6, v2

    if-eqz v17, :cond_2

    .line 132
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inPtr":I
    .local v9, "inPtr":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 133
    .local v3, "d":C
    aget v4, v6, v3

    .line 134
    .local v4, "escCode":I
    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_appendNumericEscape(I[C)I

    move-result v11

    .line 138
    .local v11, "length":I
    :goto_2
    add-int v17, v12, v11

    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 139
    array-length v0, v14

    move/from16 v17, v0

    sub-int v7, v17, v12

    .line 140
    .local v7, "first":I
    if-lez v7, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 144
    sub-int v15, v11, v7

    .line 145
    .local v15, "second":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v7, v14, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    move v12, v15

    .end local v7    # "first":I
    .end local v15    # "second":I
    :goto_3
    move v8, v9

    .line 151
    .end local v9    # "inPtr":I
    .restart local v8    # "inPtr":I
    goto :goto_0

    .line 122
    .end local v3    # "d":C
    .end local v4    # "escCode":I
    .end local v11    # "length":I
    :cond_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_3

    .line 123
    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 124
    const/4 v12, 0x0

    .line 126
    :cond_3
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "outPtr":I
    .local v13, "outPtr":I
    aput-char v2, v14, v12

    .line 127
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v10, :cond_5

    move v12, v13

    .line 152
    .end local v2    # "c":C
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 153
    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v17

    return-object v17

    .end local v12    # "outPtr":I
    .restart local v2    # "c":C
    .restart local v13    # "outPtr":I
    :cond_5
    move v12, v13

    .line 130
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    goto :goto_1

    .line 134
    .end local v8    # "inPtr":I
    .restart local v3    # "d":C
    .restart local v4    # "escCode":I
    .restart local v9    # "inPtr":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_appendNamedEscape(I[C)I

    move-result v11

    goto :goto_2

    .line 148
    .restart local v11    # "length":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    add-int/2addr v12, v11

    goto :goto_3
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x7f

    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 163
    .local v0, "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v0    # "byteBuilder":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 167
    :cond_0
    const/4 v5, 0x0

    .line 168
    .local v5, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 169
    .local v4, "inputEnd":I
    const/4 v8, 0x0

    .line 170
    .local v8, "outputPtr":I
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v7

    .line 173
    .local v7, "outputBuffer":[B
    :goto_0
    if-ge v5, v4, :cond_5

    .line 174
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 178
    .local v2, "escCodes":[I
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 179
    .local v1, "ch":I
    if-gt v1, v11, :cond_1

    aget v10, v2, v1

    if-eqz v10, :cond_3

    .line 191
    :cond_1
    array-length v10, v7

    if-lt v8, v10, :cond_2

    .line 192
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 193
    const/4 v8, 0x0

    .line 196
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 197
    if-gt v1, v11, :cond_7

    .line 198
    aget v3, v2, v1

    .line 200
    .local v3, "escape":I
    invoke-direct {p0, v1, v3, v0, v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_appendByteEscape(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I

    move-result v8

    .line 201
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v7

    move v5, v6

    .line 202
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_0

    .line 182
    .end local v3    # "escape":I
    :cond_3
    array-length v10, v7

    if-lt v8, v10, :cond_4

    .line 183
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 184
    const/4 v8, 0x0

    .line 186
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    .line 187
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_6

    move v8, v9

    .line 248
    .end local v1    # "ch":I
    .end local v2    # "escCodes":[I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :cond_5
    iget-object v10, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v10, v8}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v10

    return-object v10

    .end local v8    # "outputPtr":I
    .restart local v1    # "ch":I
    .restart local v2    # "escCodes":[I
    .restart local v9    # "outputPtr":I
    :cond_6
    move v8, v9

    .line 190
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_1

    .line 203
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_7
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_9

    .line 204
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 205
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .line 242
    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :goto_2
    array-length v10, v7

    if-lt v8, v10, :cond_8

    .line 243
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 244
    const/4 v8, 0x0

    .line 246
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    move v8, v9

    .line 247
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_0

    .line 208
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_9
    const v10, 0xd800

    if-lt v1, v10, :cond_a

    const v10, 0xdfff

    if-le v1, v10, :cond_b

    .line 209
    :cond_a
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 210
    array-length v10, v7

    if-lt v9, v10, :cond_11

    .line 211
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 212
    const/4 v8, 0x0

    .line 214
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 215
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v5, v6

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    goto :goto_2

    .line 217
    .end local v5    # "inputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_b
    const v10, 0xdbff

    if-le v1, v10, :cond_c

    .line 218
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 221
    :cond_c
    if-lt v6, v4, :cond_d

    .line 222
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 224
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v1, v10}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 225
    const v10, 0x10ffff

    if-le v1, v10, :cond_e

    .line 226
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 228
    :cond_e
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 229
    array-length v10, v7

    if-lt v9, v10, :cond_10

    .line 230
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 231
    const/4 v8, 0x0

    .line 233
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 234
    array-length v10, v7

    if-lt v9, v10, :cond_f

    .line 235
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 236
    const/4 v8, 0x0

    .line 238
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 239
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto/16 :goto_2

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_f
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_5

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_10
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_4

    .end local v5    # "inputPtr":I
    .end local v8    # "outputPtr":I
    .restart local v6    # "inputPtr":I
    .restart local v9    # "outputPtr":I
    :cond_11
    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_3
.end method
