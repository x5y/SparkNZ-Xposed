.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;
.super Ljava/lang/Object;
.source "AdapterMyAccount.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$callDiversionSettingsDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;->val$callDiversionSettingsDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;

    .line 442
    .local v0, "callDiversionOptionDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;->val$callDiversionSettingsDTO:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getOptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->setSelectedOptionId(I)V

    .line 444
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->notifyDataSetChanged()V

    .line 445
    return-void
.end method
