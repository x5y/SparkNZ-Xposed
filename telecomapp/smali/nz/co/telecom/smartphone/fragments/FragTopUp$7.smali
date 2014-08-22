.class Lnz/co/telecom/smartphone/fragments/FragTopUp$7;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;->callCreditCardPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 729
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 732
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
