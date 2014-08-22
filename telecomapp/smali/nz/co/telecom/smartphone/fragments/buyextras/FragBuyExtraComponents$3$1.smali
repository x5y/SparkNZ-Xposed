.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3$1;
.super Ljava/lang/Object;
.source "FragBuyExtraComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3$1;->this$1:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->handleBuyExtraResponse()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1800(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    .line 252
    return-void
.end method
