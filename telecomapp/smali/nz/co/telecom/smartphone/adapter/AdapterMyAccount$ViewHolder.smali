.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterMyAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field buttonCallDiversionSave:Landroid/widget/Button;

.field switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

.field textViewAccountProtectionText:Landroid/widget/TextView;

.field textViewAccountProtectionTitle:Landroid/widget/TextView;

.field textViewCallDiversionTitle:Landroid/widget/TextView;

.field textViewCallSettingsText:Landroid/widget/TextView;

.field textViewCallSettingsTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

.field viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V

    return-void
.end method
