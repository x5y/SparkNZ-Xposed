.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;
.super Ljava/lang/Object;
.source "AdapterMyAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolderHeader"
.end annotation


# instance fields
.field textViewHeader:Landroid/widget/TextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V

    return-void
.end method
