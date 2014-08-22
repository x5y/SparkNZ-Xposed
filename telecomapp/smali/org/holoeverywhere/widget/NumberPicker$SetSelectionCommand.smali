.class Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1802(Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 215
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$1902(Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 215
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v0

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setSelection(II)V

    .line 223
    return-void
.end method
