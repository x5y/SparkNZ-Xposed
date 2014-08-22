.class Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;Lorg/holoeverywhere/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/AutoCompleteTextView$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;-><init>(Lorg/holoeverywhere/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->doAfterTextChanged()V

    .line 47
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/holoeverywhere/widget/AutoCompleteTextView$MyWatcher;->this$0:Lorg/holoeverywhere/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/AutoCompleteTextView;->doBeforeTextChanged()V

    .line 53
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 58
    return-void
.end method
