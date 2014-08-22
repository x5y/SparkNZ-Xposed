.class public abstract Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.super Ljava/lang/Object;
.source "AbstractDataServicesService.java"


# static fields
.field private static final CACHE_TIMEOUT:I = 0x124f80


# instance fields
.field protected mAccountController:Lnz/co/telecom/smartphone/controller/AccountControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mAlertsAndNotificationsController:Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mConfigController:Lnz/co/telecom/smartphone/controller/ConfigControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mExtrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLineController:Lnz/co/telecom/smartphone/controller/LineControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mMyAccountController:Lnz/co/telecom/smartphone/controller/MyAccountControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected final mObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field protected mOrdersController:Lnz/co/telecom/smartphone/controller/OrdersControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mRecentActivityController:Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->mObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-void
.end method


# virtual methods
.method protected byteArrayToObject([B)Ljava/lang/Object;
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 94
    .local v3, "objectInput":Ljava/io/ObjectInput;
    const/4 v5, 0x0

    .line 97
    .local v5, "resultOut":Ljava/lang/Object;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .local v4, "objectInput":Ljava/io/ObjectInput;
    :try_start_1
    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 103
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 104
    invoke-interface {v4}, Ljava/io/ObjectInput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 110
    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .end local v5    # "resultOut":Ljava/lang/Object;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    :goto_0
    return-object v5

    .line 105
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v5    # "resultOut":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 108
    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 100
    .local v2, "exp":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 104
    invoke-interface {v3}, Ljava/io/ObjectInput;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exp":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 103
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 104
    invoke-interface {v3}, Ljava/io/ObjectInput;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 107
    :goto_3
    throw v6

    .line 105
    :catch_3
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_2

    .line 99
    .end local v3    # "objectInput":Ljava/io/ObjectInput;
    .restart local v4    # "objectInput":Ljava/io/ObjectInput;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "objectInput":Ljava/io/ObjectInput;
    .restart local v3    # "objectInput":Ljava/io/ObjectInput;
    goto :goto_1
.end method

.method protected getEntityJSON(Lnz/co/telecom/smartphone/dto/AbstractDTO;)Ljava/lang/String;
    .locals 1
    .param p1, "dto"    # Lnz/co/telecom/smartphone/dto/AbstractDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->mObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isExpired(Ljava/util/Date;)Z
    .locals 7
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x124f80

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 58
    .local v0, "isExpired":Z
    :goto_0
    return v0

    .line 57
    .end local v0    # "isExpired":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected objectToByteArray(Ljava/lang/Object;)[B
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 69
    .local v3, "objectOutput":Ljava/io/ObjectOutput;
    const/4 v5, 0x0

    .line 72
    .local v5, "resultOut":[B
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .local v4, "objectOutput":Ljava/io/ObjectOutput;
    :try_start_1
    invoke-interface {v4, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 79
    :try_start_2
    invoke-interface {v4}, Ljava/io/ObjectOutput;->close()V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 86
    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    :goto_0
    return-object v5

    .line 81
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 84
    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 76
    .local v2, "exp":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exp":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 79
    :goto_2
    :try_start_5
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 83
    :goto_3
    throw v6

    .line 81
    :catch_3
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_2

    .line 75
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v4    # "objectOutput":Ljava/io/ObjectOutput;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "objectOutput":Ljava/io/ObjectOutput;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutput;
    goto :goto_1
.end method
