.class public Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterPlanExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private item_content_details_tablelayout:Landroid/widget/LinearLayout;

.field private item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;

.field private item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;

.field private item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private item_header_product_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field private mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

.field private subheader_content_layout:Landroid/widget/RelativeLayout;

.field private subheader_layout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

.field private viewGroupDetailsSection:Landroid/view/ViewGroup;

.field private viewGroupSectionFooter:Landroid/view/ViewGroup;

.field private viewGroupSectionHeader:Landroid/view/ViewGroup;

.field private xButton:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private xTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object p1
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1102(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1402(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$1602(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    return-object v0
.end method

.method static synthetic access$1702(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xButton:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYButton;)Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYButton;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xButton:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_details_tablelayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_details_tablelayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$402(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYButton;)Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYButton;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object p1
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_product_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_product_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object p1
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$702(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$802(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object p1
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$902(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;

    return-object p1
.end method


# virtual methods
.method public getOneProduct()Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    return-object v0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->usageType:Ljava/lang/String;

    return-object v0
.end method
