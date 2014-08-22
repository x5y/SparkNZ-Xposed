.class Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;
.super Ljava/lang/Thread;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;

.field final synthetic val$fragRef:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;->val$fragRef:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;->val$fragRef:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->generateToken()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2100(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    .line 464
    return-void
.end method
