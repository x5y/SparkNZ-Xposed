.class final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final _length:I

.field private final _next:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

.field private final _symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "next"    # Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 697
    iput-object p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 698
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_length:I

    .line 699
    return-void

    .line 698
    :cond_0
    iget v0, p2, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public find([CII)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 706
    iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 707
    .local v2, "sym":Ljava/lang/String;
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 710
    .local v0, "b":Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, p3, :cond_2

    .line 711
    const/4 v1, 0x0

    .line 713
    .local v1, "i":I
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_1

    .line 717
    :goto_1
    if-ne v1, p3, :cond_2

    .line 727
    .end local v1    # "i":I
    .end local v2    # "sym":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 716
    .restart local v1    # "i":I
    .restart local v2    # "sym":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p3, :cond_0

    goto :goto_1

    .line 721
    .end local v1    # "i":I
    :cond_2
    if-nez v0, :cond_3

    .line 727
    const/4 v2, 0x0

    goto :goto_2

    .line 724
    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    goto :goto_0
.end method

.method public getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_next:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_length:I

    return v0
.end method
