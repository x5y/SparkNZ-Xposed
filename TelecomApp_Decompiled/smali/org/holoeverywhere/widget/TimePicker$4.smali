.class Lorg/holoeverywhere/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/TimePicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/holoeverywhere/widget/TimePicker$4;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 200
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker$4;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker$4;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lorg/holoeverywhere/widget/TimePicker;->access$200(Lorg/holoeverywhere/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lorg/holoeverywhere/widget/TimePicker;->access$202(Lorg/holoeverywhere/widget/TimePicker;Z)Z

    .line 201
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker$4;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/TimePicker;->access$300(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 202
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker$4;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/TimePicker;->access$400(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 203
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
