.class public final Lorg/holoeverywhere/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 9
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_1

    .line 25
    invoke-static {p0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/holoeverywhere/app/Application;->getLastInstance()Lorg/holoeverywhere/app/Application;

    move-result-object v5

    const-class v6, Lorg/holoeverywhere/content/ChooserActivity;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    if-eqz p1, :cond_2

    .line 31
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit8 v3, v5, 0x3

    .line 35
    .local v3, "permFlags":I
    if-eqz v3, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 37
    .local v4, "targetClipData":Landroid/content/ClipData;
    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 38
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 40
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 41
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 47
    .local v2, "mimeTypes":[Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/content/ClipData;

    .end local v4    # "targetClipData":Landroid/content/ClipData;
    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 49
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_3
    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 45
    .restart local v1    # "item":Landroid/content/ClipData$Item;
    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    goto :goto_1
.end method
