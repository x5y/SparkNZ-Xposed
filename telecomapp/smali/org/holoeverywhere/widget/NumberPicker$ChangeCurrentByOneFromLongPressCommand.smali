.class Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$200(Lorg/holoeverywhere/widget/NumberPicker;Z)V

    .line 56
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$300(Lorg/holoeverywhere/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
