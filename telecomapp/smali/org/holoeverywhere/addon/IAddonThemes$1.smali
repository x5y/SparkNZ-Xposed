.class Lorg/holoeverywhere/addon/IAddonThemes$1;
.super Ljava/lang/Object;
.source "IAddonThemes.java"

# interfaces
.implements Lorg/holoeverywhere/addon/IAddonThemes$ThemeResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddonThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/addon/IAddonThemes;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/addon/IAddonThemes;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/holoeverywhere/addon/IAddonThemes$1;->this$0:Lorg/holoeverywhere/addon/IAddonThemes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveThemeForContext(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invalidTheme"    # I

    .prologue
    .line 29
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->getThemeType(Landroid/content/Context;)I

    move-result v0

    .line 30
    .local v0, "theme":I
    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lorg/holoeverywhere/ThemeManager;->getThemeMask()I

    move-result v1

    and-int v0, p2, v1

    .line 32
    if-nez v0, :cond_0

    .line 33
    sget v0, Lorg/holoeverywhere/ThemeManager;->DARK:I

    .line 36
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/addon/IAddonThemes$1;->this$0:Lorg/holoeverywhere/addon/IAddonThemes;

    # getter for: Lorg/holoeverywhere/addon/IAddonThemes;->mThemeFlag:I
    invoke-static {v1}, Lorg/holoeverywhere/addon/IAddonThemes;->access$000(Lorg/holoeverywhere/addon/IAddonThemes;)I

    move-result v1

    or-int/2addr v0, v1

    .line 37
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/holoeverywhere/ThemeManager;->getThemeResource(IZ)I

    move-result v1

    return v1
.end method
