.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$10;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->applySearchFilter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$10;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$10;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v1, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->showListEmpty(Z)V

    .line 533
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
