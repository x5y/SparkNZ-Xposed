.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "HostSpecifier.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final canonicalForm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "canonicalForm"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 4
    .param p0, "specifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 127
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid host specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 134
    .local v1, "parseException":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 135
    throw v1
.end method

.method public static fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 5
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-nez v0, :cond_0

    .line 92
    :try_start_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 98
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 99
    new-instance v2, Lcom/google/common/net/HostSpecifier;

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->toUriString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    .line 108
    :goto_2
    return-object v2

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->fromLenient(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v1

    .line 107
    .local v1, "domain":Lcom/google/common/net/InternetDomainName;
    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Lcom/google/common/net/HostSpecifier;

    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain name does not have a recognized public suffix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "domain":Lcom/google/common/net/InternetDomainName;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 93
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "specifier"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    if-ne p0, p1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/google/common/net/HostSpecifier;

    .line 161
    .local v0, "that":Lcom/google/common/net/HostSpecifier;
    iget-object v1, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 164
    .end local v0    # "that":Lcom/google/common/net/HostSpecifier;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->canonicalForm:Ljava/lang/String;

    return-object v0
.end method
