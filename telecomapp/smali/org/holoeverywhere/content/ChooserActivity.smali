.class public Lorg/holoeverywhere/content/ChooserActivity;
.super Lorg/holoeverywhere/app/ResolverActivity;
.source "ChooserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/holoeverywhere/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/holoeverywhere/content/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 16
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 17
    .local v10, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v10, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lorg/holoeverywhere/content/ChooserActivity;->finish()V

    .line 42
    :goto_0
    return-void

    :cond_0
    move-object v2, v10

    .line 22
    check-cast v2, Landroid/content/Intent;

    .line 23
    .local v2, "target":Landroid/content/Intent;
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 24
    .local v3, "title":Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 25
    invoke-virtual {p0}, Lorg/holoeverywhere/content/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/holoeverywhere/R$string;->chooseActivity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 27
    :cond_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 28
    .local v9, "pa":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 29
    .local v4, "initialIntents":[Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 30
    array-length v0, v9

    new-array v4, v0, [Landroid/content/Intent;

    .line 31
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 32
    aget-object v0, v9, v7

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 33
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not an Intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v9, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lorg/holoeverywhere/content/ChooserActivity;->finish()V

    goto :goto_0

    .line 38
    :cond_2
    aget-object v0, v9, v7

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v7

    .line 31
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 41
    .end local v7    # "i":I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/holoeverywhere/content/ChooserActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method
