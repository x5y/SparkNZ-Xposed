.class Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/LayoutInflater$BlinkLayout;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x42

    if-ne v2, v3, :cond_2

    .line 62
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    # getter for: Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->mBlink:Z
    invoke-static {v2}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->access$000(Lorg/holoeverywhere/LayoutInflater$BlinkLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    iget-object v3, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    # getter for: Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v3}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->access$100(Lorg/holoeverywhere/LayoutInflater$BlinkLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->mBlinkState:Z
    invoke-static {v2, v0}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->access$102(Lorg/holoeverywhere/LayoutInflater$BlinkLayout;Z)Z

    .line 64
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    # invokes: Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->makeBlink()V
    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->access$200(Lorg/holoeverywhere/LayoutInflater$BlinkLayout;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater$BlinkLayout$1;->this$0:Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    invoke-virtual {v0}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;->invalidate()V

    .line 69
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
