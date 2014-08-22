.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$2;
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


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$2;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    check-cast p1, Lorg/holoeverywhere/widget/Switch;

    .end local p1    # "buttonView":Landroid/widget/CompoundButton;
    const/4 v1, 0x0

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->showConfirmChangeDialog(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Landroid/view/View;I)V

    .line 338
    return-void
.end method
