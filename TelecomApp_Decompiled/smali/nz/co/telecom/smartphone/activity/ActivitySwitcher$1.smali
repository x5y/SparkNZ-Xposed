.class final Lnz/co/telecom/smartphone/activity/ActivitySwitcher$1;
.super Ljava/lang/Object;
.source "ActivitySwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivitySwitcher$1;->val$listener:Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivitySwitcher$1;->val$listener:Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher$AnimationFinishedListener;->onAnimationFinished()V

    .line 74
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    return-void
.end method
