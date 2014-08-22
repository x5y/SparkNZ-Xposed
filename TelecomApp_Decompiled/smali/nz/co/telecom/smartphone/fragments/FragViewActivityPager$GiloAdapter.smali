.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragViewActivityPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GiloAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 251
    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;->context:Landroid/content/Context;

    .line 252
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 279
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Destroy Item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x4

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 261
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->CONTENT:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$200()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 265
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instantiateItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "v":Landroid/widget/TextView;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 269
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method
