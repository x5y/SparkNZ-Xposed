.class final Lnet/sqlcipher/database/SQLiteDatabase$1;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"

# interfaces
.implements Lnet/sqlcipher/database/SQLiteDatabaseHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sqlcipher/database/SQLiteDatabase;->upgradeDatabaseFormatFromVersion1To2(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 90
    const-string v0, "PRAGMA cipher_default_use_hmac = on"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public preKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 87
    const-string v0, "PRAGMA cipher_default_use_hmac = off"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method
