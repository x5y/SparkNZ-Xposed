.class public Lnz/co/telecom/smartphone/activity/ActivitySwitcher;
.super Ljava/lang/Object;
.source "ActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;
    }
.end annotation


# static fields
.field private static final DEPTH:F = 100.0f

.field private static final DURATION:I = 0x190

.field private static final OUT_DURATION:I = 0x4b0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static animationIn(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 1
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->animationIn(Landroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V

    .line 28
    return-void
.end method

.method public static animationIn(Landroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 6
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "listener"    # Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;

    .prologue
    .line 31
    const/high16 v0, 0x42b40000

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V

    .line 32
    return-void
.end method

.method public static animationOut(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 1
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->animationOut(Landroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V

    .line 36
    return-void
.end method

.method public static animationOut(Landroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 6
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "listener"    # Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V

    .line 40
    return-void
.end method

.method private static apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 9
    .param p0, "fromDegree"    # F
    .param p1, "toDegree"    # F
    .param p2, "reverse"    # Z
    .param p3, "container"    # Landroid/view/View;
    .param p4, "windowManager"    # Landroid/view/WindowManager;
    .param p5, "listener"    # Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;

    .prologue
    const/high16 v2, 0x40000000

    const/4 v8, 0x1

    .line 45
    invoke-interface {p4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 46
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 47
    .local v3, "centerX":F
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 49
    .local v4, "centerY":F
    new-instance v0, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;

    const/high16 v5, 0x42c80000

    move v1, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 50
    .local v0, "a":Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->reset()V

    .line 51
    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setFillEnabled(Z)V

    .line 53
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setFillBefore(Z)V

    .line 54
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setDuration(J)V

    .line 59
    :goto_0
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setFillAfter(Z)V

    .line 60
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    if-eqz p5, :cond_0

    .line 62
    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivitySwitcher$1;

    invoke-direct {v1, p5}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    return-void

    .line 57
    :cond_2
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lnz/co/telecom/smartphone/activity/Rotate3dAnimation;->setDuration(J)V

    goto :goto_0
.end method
