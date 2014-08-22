.class Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field menuCheckBox:Landroid/widget/CheckBox;

.field menuTextView:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMenuList;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
