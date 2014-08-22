.class public Lorg/codehaus/jackson/io/UTF32Reader;
.super Lorg/codehaus/jackson/io/BaseReader;
.source "UTF32Reader.java"


# instance fields
.field protected final _bigEndian:Z

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _managedBuffers:Z

.field protected _surrogate:C


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I
    .param p6, "isBigEndian"    # Z

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/io/BaseReader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .line 19
    iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 24
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    .line 29
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    .line 44
    iput-boolean p6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_bigEndian:Z

    .line 45
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    .line 46
    return-void
.end method

.method private loadMore(I)Z
    .locals 10
    .param p1, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iget v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    sub-int/2addr v6, p1

    add-int/2addr v5, v6

    iput v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    .line 170
    if-lez p1, :cond_5

    .line 171
    iget v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    if-lez v5, :cond_1

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 173
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget v7, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/2addr v7, v1

    aget-byte v6, v6, v7

    aput-byte v6, v5, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 177
    .end local v1    # "i":I
    :cond_1
    iput p1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    .line 201
    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    if-ge v2, v9, :cond_b

    .line 202
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_a

    move v0, v4

    .line 203
    .local v0, "count":I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 204
    if-gez v0, :cond_3

    .line 205
    iget-boolean v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    .line 208
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    invoke-direct {p0, v2, v9}, Lorg/codehaus/jackson/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 213
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    goto :goto_1

    .line 182
    .end local v0    # "count":I
    :cond_5
    iput v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 183
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v5, :cond_7

    move v0, v4

    .line 184
    .restart local v0    # "count":I
    :goto_3
    if-ge v0, v3, :cond_9

    .line 185
    iput v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    .line 186
    if-gez v0, :cond_8

    .line 187
    iget-boolean v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v3, :cond_6

    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    .line 215
    .end local v0    # "count":I
    :cond_6
    :goto_4
    return v2

    .line 183
    :cond_7
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_3

    .line 193
    .restart local v0    # "count":I
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 195
    :cond_9
    iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    goto :goto_1

    .line 202
    .end local v0    # "count":I
    :cond_a
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    iget-object v7, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    array-length v7, v7

    iget v8, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_2

    :cond_b
    move v2, v3

    .line 215
    goto :goto_4
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "offset"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 152
    .local v0, "bytePos":I
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    add-int v1, v2, p2

    .line 154
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .param p1, "gotBytes"    # I
    .param p2, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_byteCount:I

    add-int v0, v2, p1

    .line 142
    .local v0, "bytePos":I
    iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    .line 144
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->close()V

    return-void
.end method

.method public bridge synthetic read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x10ffff

    const/4 v5, -0x1

    .line 59
    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    if-nez v6, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v5

    .line 62
    :cond_1
    const/4 v6, 0x1

    if-ge p3, v6, :cond_2

    move v5, p3

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    if-ltz p2, :cond_3

    add-int v6, p2, p3

    array-length v7, p1

    if-le v6, v7, :cond_4

    .line 67
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/UTF32Reader;->reportBounds([CII)V

    .line 70
    :cond_4
    add-int/2addr p3, p2

    .line 71
    move v2, p2

    .line 74
    .local v2, "outPtr":I
    iget-char v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    if-eqz v6, :cond_7

    .line 75
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    iget-char v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    aput-char v5, p1, v2

    .line 76
    const/4 v5, 0x0

    iput-char v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 91
    :cond_5
    :goto_1
    if-ge v3, p3, :cond_c

    .line 92
    iget v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 95
    .local v4, "ptr":I
    iget-boolean v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_bigEndian:Z

    if-eqz v5, :cond_9

    .line 96
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 102
    .local v0, "ch":I
    :goto_2
    iget v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    .line 106
    const v5, 0xffff

    if-le v0, v5, :cond_a

    .line 107
    if-le v0, v8, :cond_6

    .line 108
    sub-int v5, v3, p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(above "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6}, Lorg/codehaus/jackson/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    .line 111
    :cond_6
    const/high16 v5, 0x10000

    sub-int/2addr v0, v5

    .line 112
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    const v5, 0xd800

    shr-int/lit8 v6, v0, 0xa

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 114
    const v5, 0xdc00

    and-int/lit16 v6, v0, 0x3ff

    or-int v0, v5, v6

    .line 116
    if-lt v2, p3, :cond_b

    .line 117
    int-to-char v5, v0

    iput-char v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_surrogate:C

    .line 127
    .end local v0    # "ch":I
    .end local v4    # "ptr":I
    :goto_3
    sub-int p3, v2, p2

    .line 128
    iget v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    add-int/2addr v5, p3

    iput v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_charCount:I

    move v5, p3

    .line 129
    goto/16 :goto_0

    .line 82
    :cond_7
    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    iget v7, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    sub-int v1, v6, v7

    .line 83
    .local v1, "left":I
    const/4 v6, 0x4

    if-ge v1, v6, :cond_8

    .line 84
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF32Reader;->loadMore(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_8
    move v3, v2

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto/16 :goto_1

    .line 99
    .end local v1    # "left":I
    .restart local v4    # "ptr":I
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .restart local v0    # "ch":I
    goto/16 :goto_2

    :cond_a
    move v2, v3

    .line 121
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 122
    iget v5, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_ptr:I

    iget v6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->_length:I

    if-lt v5, v6, :cond_5

    move v2, v3

    .line 123
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_3

    .end local v0    # "ch":I
    .end local v2    # "outPtr":I
    .end local v4    # "ptr":I
    .restart local v3    # "outPtr":I
    :cond_c
    move v2, v3

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_3
.end method
