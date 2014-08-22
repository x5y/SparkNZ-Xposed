.class public abstract Lorg/holoeverywhere/internal/_ViewGroup;
.super Landroid/view/ViewGroup;
.source "_ViewGroup.java"


# static fields
.field public static final ACCESSIBILITY_FOCUS_BACKWARD:I = 0x3

.field public static final ACCESSIBILITY_FOCUS_FORWARD:I = 0x2

.field public static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field public static final FOCUSABLES_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_ACCESSIBILITY:I = 0x1000


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/internal/_ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/internal/_ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public static isAccessibilityManagerEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "enabled":Z
    :try_start_0
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 25
    :goto_0
    return v0

    .line 23
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isAccessibilityManagerEnabled()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/_ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/internal/_ViewGroup;->isAccessibilityManagerEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
