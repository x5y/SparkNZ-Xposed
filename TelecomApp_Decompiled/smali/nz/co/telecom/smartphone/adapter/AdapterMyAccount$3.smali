.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;
.super Ljava/lang/Object;
.source "AdapterMyAccount.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

.field final synthetic val$callDiversionOptionDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;->val$callDiversionOptionDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 427
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;->val$callDiversionOptionDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->setDivertToMobile(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 419
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 423
    return-void
.end method
