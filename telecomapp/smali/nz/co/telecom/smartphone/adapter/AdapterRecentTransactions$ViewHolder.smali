.class Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterRecentTransactions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field item_content_recenttransactions_result_iv:Landroid/widget/ImageView;

.field item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field item_content_recenttransactions_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;)V

    return-void
.end method
