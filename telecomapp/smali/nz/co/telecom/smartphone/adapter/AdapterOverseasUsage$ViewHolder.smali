.class Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterOverseasUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field radioGroupUsageOptions:Landroid/widget/RadioGroup;

.field textViewDataAmountsLink:Landroid/widget/TextView;

.field textViewMetresUnlimitedDataUsageMessage:Landroid/widget/TextView;

.field textViewSmartCapLastChangeDate:Landroid/widget/TextView;

.field textViewSmartCapLastChangeDateHeading:Landroid/widget/TextView;

.field textViewSmartCapResetDate:Landroid/widget/TextView;

.field textViewSmartCapResetDateHeading:Landroid/widget/TextView;

.field textViewTermsAndConditions:Landroid/widget/TextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

.field viewGroupDetailsRow:Landroid/view/ViewGroup;

.field viewGroupMetresContainer:Landroid/view/ViewGroup;

.field viewGroupMetresRow:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V

    return-void
.end method
