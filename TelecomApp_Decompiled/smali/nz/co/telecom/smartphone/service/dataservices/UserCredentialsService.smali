.class public Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;
.super Ljava/lang/Object;
.source "UserCredentialsService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final K_COLUMN_ACCOUNT_NUMBER:Ljava/lang/String; = "accountnumber"

.field private static final K_COLUMN_AUTO_LOGIN:Ljava/lang/String; = "autologin"

.field private static final K_COLUMN_MOBILE_NUMBER:Ljava/lang/String; = "mobilenumber"

.field private static final K_COLUMN_MOBILE_NUMBER_PREVIOUS:Ljava/lang/String; = "mobilenumberprevious"

.field private static final K_COLUMN_SESSION_TOKEN:Ljava/lang/String; = "sessiontoken"

.field private static final K_COLUMN_USER_PASSWORD:Ljava/lang/String; = "userpassword"

.field private static final K_FALSE:Ljava/lang/String; = "FALSE"

.field private static final K_TABLE_CUSTOMER:Ljava/lang/String; = "customer"

.field private static final K_TRUE:Ljava/lang/String; = "TRUE"

.field private static TAG:Ljava/lang/String;

.field protected static contextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->contextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->initializeSqlDB()V

    .line 47
    return-void
.end method

.method private lineExtension()Ljava/lang/String;
    .locals 12

    .prologue
    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v7

    .line 121
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    const/4 v4, 0x0

    .line 127
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    const-string v9, ".mfile"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 131
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    .local v3, "fileContentOut":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, "fileContent":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 135
    int-to-char v2, v1

    .line 136
    .local v2, "fileContentChar":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 141
    .end local v1    # "fileContent":I
    .end local v2    # "fileContentChar":C
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fileContentOut":Ljava/lang/StringBuffer;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 139
    .restart local v1    # "fileContent":I
    .restart local v3    # "fileContentOut":Ljava/lang/StringBuffer;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 145
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    move-object v7, v8

    .line 148
    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileContent":I
    .end local v3    # "fileContentOut":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v5

    .line 154
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 156
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_8
    iget-object v8, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    const-string v9, ".mfile"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 157
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 166
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 167
    :catch_3
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 146
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "fileContentOut":Ljava/lang/StringBuffer;
    :catch_4
    move-exception v0

    .line 147
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 145
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    .line 148
    :goto_4
    :try_start_c
    throw v8

    .line 146
    :catch_5
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fileContentOut":Ljava/lang/StringBuffer;
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    .line 166
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_2

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v8

    .line 166
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_2

    .line 167
    :catch_9
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v8, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 166
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 169
    :goto_5
    throw v8

    .line 167
    :catch_a
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v9, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 76
    new-instance v9, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-direct {v9}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;-><init>()V

    .line 78
    .local v9, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mobilenumber"

    aput-object v0, v2, v10

    const-string v0, "userpassword"

    aput-object v0, v2, v11

    const-string v0, "autologin"

    aput-object v0, v2, v12

    const-string v0, "sessiontoken"

    aput-object v0, v2, v13

    const/4 v0, 0x4

    const-string v1, "mobilenumberprevious"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "accountnumber"

    aput-object v1, v2, v0

    .line 85
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v1, "customer"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v8

    .line 87
    .local v8, "customerQuery":Lnet/sqlcipher/Cursor;
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->close()V

    .line 103
    :goto_0
    return-object v9

    .line 92
    :cond_0
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    .line 94
    invoke-interface {v8, v10}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 95
    invoke-interface {v8, v11}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 96
    invoke-interface {v8, v12}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setAutoSignin(Z)V

    .line 97
    invoke-interface {v8, v13}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setSessionToken(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumberPrevious(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserAccountNumber(Ljava/lang/String;)V

    .line 101
    invoke-interface {v8}, Lnet/sqlcipher/Cursor;->close()V

    goto :goto_0
.end method

.method public initializeSqlDB()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 182
    iget-object v4, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 183
    iget-object v4, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mContext:Landroid/content/Context;

    const-string v5, "customer_001.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 184
    .local v2, "databaseFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 189
    :cond_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->lineExtension()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "password":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 192
    const-string v4, "create table if not exists %s (%s, %s, %s, %s, %s)"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "customer"

    aput-object v6, v5, v8

    const-string v6, "mobilenumber"

    aput-object v6, v5, v9

    const-string v6, "userpassword"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    const-string v7, "autologin"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "sessiontoken"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "mobilenumberprevious"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "customerTableCreate":Ljava/lang/String;
    iget-object v4, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v4, "alter table %s add column %s"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "customer"

    aput-object v6, v5, v8

    const-string v6, "accountnumber"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "customerTableAlter":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V
    .locals 7
    .param p1, "userCredentialsDTO"    # Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 54
    const-string v2, "delete from %s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "customer"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "customerTableDelete":Ljava/lang/String;
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v2, "insert into %s values (?, ?, ?, ?, ?, ?) "

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "customer"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "customerTableInsert":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v5, 0x2

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TRUE"

    :goto_0
    aput-object v2, v4, v5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getSessionToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumberPrevious()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserAccountNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 70
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsService;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 71
    return-void

    .line 60
    :cond_0
    const-string v2, "FALSE"

    goto :goto_0
.end method
