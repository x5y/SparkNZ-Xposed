.class Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterMyUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field button:Lnz/co/telecom/smartphone/widget/TMYButton;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

.field title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field usageMeters:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)V

    return-void
.end method
