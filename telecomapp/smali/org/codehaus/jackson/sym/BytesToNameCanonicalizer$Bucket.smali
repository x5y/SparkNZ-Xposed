.class final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final _length:I

.field protected final _name:Lorg/codehaus/jackson/sym/Name;

.field protected final _next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 1
    .param p1, "name"    # Lorg/codehaus/jackson/sym/Name;
    .param p2, "next"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    .line 1166
    iput-object p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 1167
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 1168
    return-void

    .line 1167
    :cond_0
    iget v0, p2, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public find(III)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 1174
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1175
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1176
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    .line 1187
    :cond_0
    :goto_0
    return-object v1

    .line 1179
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1180
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    .line 1181
    .local v1, "currName":Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1182
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1179
    :cond_2
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1187
    .end local v1    # "currName":Lorg/codehaus/jackson/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(I[II)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 1192
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1193
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    .line 1205
    :cond_0
    :goto_0
    return-object v1

    .line 1197
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1198
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_name:Lorg/codehaus/jackson/sym/Name;

    .line 1199
    .local v1, "currName":Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1200
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    :cond_2
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1205
    .end local v1    # "currName":Lorg/codehaus/jackson/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    return v0
.end method
