.class Lnz/co/telecom/smartphone/fragments/FragBase$3;
.super Ljava/lang/Object;
.source "FragBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBase;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 681
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;-><init>(I)V

    .line 683
    .local v0, "topUpFrag":Lnz/co/telecom/smartphone/fragments/FragBase;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->switchFragment(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 684
    return-void
.end method
