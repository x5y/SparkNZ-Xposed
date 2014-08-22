.class final Lcom/adobe/adms/measurement/ADMS_RequestProperties;
.super Ljava/lang/Object;
.source "ADMS_RequestProperties.java"


# instance fields
.field private _headers:Ljava/util/Hashtable;
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

.field private _url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "requestString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->_headers:Ljava/util/Hashtable;

    .line 12
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, "parts":[Ljava/lang/String;
    array-length v4, v2

    if-lez v4, :cond_0

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 15
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->_url:Ljava/lang/String;

    .line 19
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 21
    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    if-le v4, v5, :cond_2

    .line 33
    :cond_1
    return-void

    .line 25
    :cond_2
    aget-object v1, v2, v0

    .line 26
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, v2, v4

    .line 29
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 30
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->_headers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected getHeaders()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->_headers:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->_url:Ljava/lang/String;

    return-object v0
.end method
