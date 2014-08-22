.class Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->showSoftInput()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$000(Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 46
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x1

    # setter for: Lorg/holoeverywhere/widget/NumberPicker;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$102(Lorg/holoeverywhere/widget/NumberPicker;Z)Z

    .line 47
    return-void
.end method
