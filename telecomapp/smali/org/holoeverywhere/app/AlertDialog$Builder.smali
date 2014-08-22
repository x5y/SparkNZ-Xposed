.class public Lorg/holoeverywhere/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/holoeverywhere/app/AlertDialog$Builder;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;

    invoke-direct {v0, p1, p2}, Lorg/holoeverywhere/internal/AlertController$AlertParams;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    .line 39
    return-void
.end method


# virtual methods
.method public addButtonBehavior(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "buttonBehavior"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    or-int/2addr v1, p1

    iput v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    .line 43
    return-object p0
.end method

.method public create()Lorg/holoeverywhere/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "dialog":Lorg/holoeverywhere/app/AlertDialog;
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mDialogClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 50
    :try_start_0
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mDialogClass:Ljava/lang/Class;

    sget-object v4, Lorg/holoeverywhere/app/AlertDialog$Builder;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v6, v6, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v6, v6, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTheme:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/holoeverywhere/app/AlertDialog;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 57
    new-instance v1, Lorg/holoeverywhere/app/AlertDialog;

    .end local v1    # "dialog":Lorg/holoeverywhere/app/AlertDialog;
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v4, v4, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTheme:I

    invoke-direct {v1, v3, v4}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    .restart local v1    # "dialog":Lorg/holoeverywhere/app/AlertDialog;
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    # getter for: Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;
    invoke-static {v1}, Lorg/holoeverywhere/app/AlertDialog;->access$000(Lorg/holoeverywhere/app/AlertDialog;)Lorg/holoeverywhere/internal/AlertController;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/internal/AlertController$AlertParams;->apply(Lorg/holoeverywhere/internal/AlertController;)V

    .line 60
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-boolean v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/app/AlertDialog;->setCancelable(Z)V

    .line 61
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-boolean v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCancelable:Z

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v1, v7}, Lorg/holoeverywhere/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 64
    :cond_2
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v3, :cond_3

    .line 65
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    :cond_3
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v3, :cond_4

    .line 68
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 70
    :cond_4
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v3, :cond_5

    .line 71
    iget-object v3, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v3, v3, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    :cond_5
    return-object v1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v0, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public removeButtonBehavior(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "buttonBehavior"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    or-int/2addr v1, p1

    iput v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    .line 82
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    xor-int/2addr v1, p1

    iput v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    .line 83
    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 89
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-object p0
.end method

.method public setAlertDialogClass(Ljava/lang/Class;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/AlertDialog;",
            ">;)",
            "Lorg/holoeverywhere/app/AlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/AlertDialog;>;"
    iput-object p1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mDialogClass:Ljava/lang/Class;

    .line 95
    return-object p0
.end method

.method public setBlockDismiss(Z)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "blockDismiss"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setButtonBehavior(I)Lorg/holoeverywhere/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public setButtonBehavior(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "buttonBehavior"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mButtonBehavior:I

    .line 104
    return-object p0
.end method

.method public setCancelable(Z)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-boolean p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCancelable:Z

    .line 109
    return-object p0
.end method

.method public setCheckedItem(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "checkedItem"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 114
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 120
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 127
    return-object p0
.end method

.method public setIcon(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIconId:I

    .line 137
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 132
    return-object p0
.end method

.method public setIconAttribute(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 141
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIconId:I

    .line 144
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-boolean p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 149
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 161
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    return-object p0
.end method

.method public setMessage(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 172
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 167
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 199
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 200
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    .line 201
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 202
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 189
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p4, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 190
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 193
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 179
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 180
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItems:[Z

    .line 181
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 182
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 214
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 215
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 216
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 208
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 221
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 222
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 223
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 235
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 240
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 246
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 251
    return-object p0
.end method

.method public setOnPrepareListViewListener(Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnPrepareListViewListener:Lorg/holoeverywhere/internal/AlertController$AlertParams$OnPrepareListViewListener;

    .line 257
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 271
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 262
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 264
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 298
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 299
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 286
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p4, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 287
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 288
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 290
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 304
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 305
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 306
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 307
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 308
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 277
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mCheckedItem:I

    .line 279
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 280
    return-object p0
.end method

.method public setTheme(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTheme:I

    .line 313
    return-object p0
.end method

.method public setTitle(I)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, v1, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 323
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 317
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 318
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 329
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lorg/holoeverywhere/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput-object p1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 336
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p2, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 337
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p3, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingTop:I

    .line 338
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p4, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingRight:I

    .line 339
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog$Builder;->mParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iput p5, v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 340
    return-object p0
.end method

.method public show()Lorg/holoeverywhere/app/AlertDialog;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->create()Lorg/holoeverywhere/app/AlertDialog;

    move-result-object v0

    .line 345
    .local v0, "dialog":Lorg/holoeverywhere/app/AlertDialog;
    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog;->show()V

    .line 346
    return-object v0
.end method
