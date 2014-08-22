.class public Lnz/co/telecom/smartphone/SmartPhoneApplication;
.super Landroid/app/Application;
.source "SmartPhoneApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnz/co/telecom/smartphone/SmartPhoneApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/SmartPhoneApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/SmartPhoneApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom_datastore.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "telecomDatastore":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 25
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/SmartPhoneApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telecom_datastore.db-journal"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "telecomDatastoreJournal":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 32
    :cond_1
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/app/Application;)V

    .line 33
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 38
    sget-object v0, Lnz/co/telecom/smartphone/SmartPhoneApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate for application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->dispose()V

    .line 40
    return-void
.end method
