.class public Lorg/holoeverywhere/widget/Toast;
.super Landroid/widget/Toast;
.source "Toast.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Toast"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lorg/holoeverywhere/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/holoeverywhere/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/holoeverywhere/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/holoeverywhere/widget/Toast;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 16
    new-instance v0, Lorg/holoeverywhere/widget/Toast;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 17
    .local v0, "toast":Lorg/holoeverywhere/widget/Toast;
    invoke-virtual {v0, p2}, Lorg/holoeverywhere/widget/Toast;->setDuration(I)V

    .line 18
    new-instance v1, Lorg/holoeverywhere/widget/TextView;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, "view":Lorg/holoeverywhere/widget/TextView;
    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/TextView;->setTextColor(I)V

    .line 21
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/TextView;->setGravity(I)V

    .line 22
    sget v2, Lorg/holoeverywhere/R$drawable;->toast_frame:I

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/TextView;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/Toast;->setView(Landroid/view/View;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "Toast"

    const-string v2, "This Toast was not created with Toast.makeText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
