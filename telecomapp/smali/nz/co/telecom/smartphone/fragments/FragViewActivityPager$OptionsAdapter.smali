.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FragViewActivityPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I

    .prologue
    .line 205
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .line 206
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 207
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$100(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    .line 221
    .local v0, "optionLinkDTO":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    const v2, 0x7f0901b6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 223
    .local v1, "txtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-object p2
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$100(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 237
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    .line 239
    .local v0, "optionLinkDTO":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    const v2, 0x7f0901b6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 241
    .local v1, "txtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object p2
.end method
