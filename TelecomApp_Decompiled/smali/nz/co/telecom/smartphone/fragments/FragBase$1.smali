.class Lnz/co/telecom/smartphone/fragments/FragBase$1;
.super Ljava/lang/Object;
.source "FragBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBase;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    .line 667
    return-void
.end method
