.class public Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterActivityData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private activity_data_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_data_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_data_type:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$002(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_type:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_type:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$402(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    .line 381
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    return-object p1
.end method
