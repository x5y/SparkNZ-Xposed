.class Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockCompat;
.super Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;
.source "AddonSherlock.java"


# annotations
.annotation runtime Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    api = 0x7
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/AddonSherlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoloActionBarSherlockCompat"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flags"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;-><init>(Landroid/app/Activity;I)V

    .line 208
    return-void
.end method


# virtual methods
.method protected getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lorg/holoeverywhere/app/Activity;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    check-cast v0, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportActionBarContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
