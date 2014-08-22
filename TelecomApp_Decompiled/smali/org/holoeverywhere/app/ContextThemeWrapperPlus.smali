.class public Lorg/holoeverywhere/app/ContextThemeWrapperPlus;
.super Landroid/view/ContextThemeWrapper;
.source "ContextThemeWrapperPlus.java"

# interfaces
.implements Lorg/holoeverywhere/SystemServiceManager$SuperSystemService;


# instance fields
.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 15
    iput p2, p0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;->mTheme:I

    .line 16
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0, p1}, Lorg/holoeverywhere/SystemServiceManager;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getThemeResource()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;->mTheme:I

    return v0
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;->mTheme:I

    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 30
    return-void
.end method

.method public superGetSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
