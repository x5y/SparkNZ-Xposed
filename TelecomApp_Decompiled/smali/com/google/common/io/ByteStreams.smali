.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    const/4 v4, 0x1

    .line 116
    .local v4, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 118
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v2, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 121
    .local v0, "count":J
    const/4 v4, 0x0

    .line 124
    :try_start_2
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .line 124
    .end local v0    # "count":J
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .end local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/OutputStream;)J
    .locals 5
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v3, 0x1

    .line 144
    .local v3, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 146
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 147
    .local v0, "count":J
    const/4 v3, 0x0

    .line 150
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .end local v0    # "count":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 166
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 168
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 169
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 175
    return-wide v2

    .line 172
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 174
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 5
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 190
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 191
    .local v1, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 198
    :cond_1
    return-wide v1
.end method

.method public static equal(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/InputSupplier;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "supplier1":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "supplier2":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    const/16 v10, 0x1000

    .line 578
    new-array v0, v10, [B

    .line 579
    .local v0, "buf1":[B
    new-array v1, v10, [B

    .line 581
    .local v1, "buf2":[B
    const/4 v6, 0x1

    .line 582
    .local v6, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 584
    .local v2, "in1":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 587
    .local v3, "in2":Ljava/io/InputStream;
    :cond_0
    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_1
    invoke-static {v2, v0, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 588
    .local v4, "read1":I
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-static {v3, v1, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 589
    .local v5, "read2":I
    if-ne v4, v5, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 590
    :cond_1
    const/4 v6, 0x0

    .line 598
    :try_start_2
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    :goto_0
    return v7

    .line 592
    :cond_2
    if-eq v4, v10, :cond_0

    .line 593
    const/4 v6, 0x0

    .line 594
    const/4 v7, 0x1

    .line 598
    :try_start_3
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 601
    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    goto :goto_0

    .line 598
    .end local v4    # "read1":I
    .end local v5    # "read2":I
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 601
    .end local v3    # "in2":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
.end method

.method public static getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
    .locals 2
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/util/zip/Checksum;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$2;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$2;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDigest(Lcom/google/common/io/InputSupplier;Ljava/security/MessageDigest;)[B
    .locals 1
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/security/MessageDigest;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$3;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$3;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "suppliers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$5;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$5;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "suppliers":[Lcom/google/common/io/InputSupplier;, "[Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lcom/google/common/io/InputSupplier;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v2, 0x0

    .line 550
    .local v2, "count":J
    const/4 v5, 0x1

    .line 551
    .local v5, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 555
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    const-wide/32 v6, 0x7fffffff

    :try_start_0
    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 556
    .local v0, "amt":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 557
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 558
    const/4 v5, 0x0

    .line 567
    invoke-static {v4, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .line 561
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 563
    :cond_1
    add-long/2addr v2, v0

    goto :goto_0

    .line 567
    .end local v0    # "amt":J
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v6
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([B)V

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .prologue
    .line 250
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 251
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([BI)V

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>()V

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 5
    .param p0, "size"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(I)V

    return-object v0

    :cond_0
    move v0, v2

    .line 403
    goto :goto_0
.end method

.method public static newInputStreamSupplier([B)Lcom/google/common/io/InputSupplier;
    .locals 2
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/io/ByteStreams;->newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;
    .locals 1
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$1;-><init>([BII)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    if-gez p3, :cond_0

    .line 777
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_0
    const/4 v1, 0x0

    .line 780
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 781
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 782
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 787
    .end local v0    # "result":I
    :cond_1
    return v1

    .line 785
    .restart local v0    # "result":I
    :cond_2
    add-int/2addr v1, v0

    .line 786
    goto :goto_0
.end method

.method public static readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 679
    .local v1, "buf":[B
    const/4 v3, 0x1

    .line 680
    .local v3, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 684
    .local v2, "in":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 685
    .local v0, "amt":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 686
    const/4 v3, 0x0

    .line 690
    :goto_0
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 692
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v4

    .line 689
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v1, v4, v0}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 692
    .end local v0    # "amt":I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 618
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 637
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 639
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 654
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 655
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 656
    .local v0, "amt":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 658
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 659
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 661
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_0

    .line 663
    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0

    .line 666
    .end local v0    # "amt":J
    :cond_2
    return-void
.end method

.method public static slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
    .locals 6
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;JJ)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 805
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset is negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 807
    cmp-long v0, p3, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "length is negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 808
    new-instance v0, Lcom/google/common/io/ByteStreams$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/io/ByteStreams$4;-><init>(Lcom/google/common/io/InputSupplier;JJ)V

    return-object v0

    :cond_0
    move v0, v2

    .line 806
    goto :goto_0

    :cond_1
    move v1, v2

    .line 807
    goto :goto_1
.end method

.method public static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    .line 224
    .local v2, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 226
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 227
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 230
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1    # "result":[B
    :catchall_0
    move-exception v3

    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 212
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .locals 3
    .param p0, "from"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v1, 0x1

    .line 95
    .local v1, "threw":Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 97
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
