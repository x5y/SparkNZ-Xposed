.class Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;
.super Ljava/lang/Thread;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;

.field final synthetic val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->generateToken()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    .line 533
    return-void
.end method
