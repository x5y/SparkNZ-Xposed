.class Lnz/co/telecom/smartphone/fragments/FragPayBill$3;
.super Ljava/lang/Object;
.source "FragPayBill.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;->callCreditCardPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 852
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 860
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 855
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
