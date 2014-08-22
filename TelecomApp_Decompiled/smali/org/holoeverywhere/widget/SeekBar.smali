.class public Lorg/holoeverywhere/widget/SeekBar;
.super Lorg/holoeverywhere/widget/AbsSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 37
    const-class v0, Lorg/holoeverywhere/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 44
    const-class v0, Lorg/holoeverywhere/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public onProgressRefresh(FZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 50
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Lorg/holoeverywhere/widget/SeekBar;IZ)V

    .line 54
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lorg/holoeverywhere/widget/SeekBar;)V

    .line 62
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 67
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lorg/holoeverywhere/widget/SeekBar;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/holoeverywhere/widget/SeekBar;->mOnSeekBarChangeListener:Lorg/holoeverywhere/widget/SeekBar$OnSeekBarChangeListener;

    .line 74
    return-void
.end method
