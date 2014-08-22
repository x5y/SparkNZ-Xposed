.class Lorg/holoeverywhere/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Lorg/holoeverywhere/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/holoeverywhere/widget/Spinner;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/Spinner;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/Spinner;Lorg/holoeverywhere/widget/Spinner$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/Spinner;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/Spinner$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/Spinner$DialogPopup;-><init>(Lorg/holoeverywhere/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPopup:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog;->dismiss()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPopup:Lorg/holoeverywhere/app/AlertDialog;

    .line 37
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPopup:Lorg/holoeverywhere/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPopup:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v0, p2}, Lorg/holoeverywhere/widget/Spinner;->setSelection(I)V

    .line 67
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    iget-object v0, v0, Lorg/holoeverywhere/widget/Spinner;->mOnItemClickListener:Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/holoeverywhere/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->dismiss()V

    .line 71
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 76
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 86
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 93
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 97
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lorg/holoeverywhere/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "builder":Lorg/holoeverywhere/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->this$0:Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/holoeverywhere/app/AlertDialog$Builder;->show()Lorg/holoeverywhere/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/Spinner$DialogPopup;->mPopup:Lorg/holoeverywhere/app/AlertDialog;

    .line 109
    return-void
.end method
