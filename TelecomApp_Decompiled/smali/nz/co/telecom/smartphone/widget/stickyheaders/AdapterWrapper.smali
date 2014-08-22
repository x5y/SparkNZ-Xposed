.class Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private final mHeaderCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    .line 38
    new-instance v0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$1;-><init>(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 53
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$101(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic access$201(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;)Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    return-object v0
.end method

.method private configureHeader(Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;I)Landroid/view/View;
    .locals 3
    .param p1, "wv"    # Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    .param p2, "position"    # I

    .prologue
    .line 126
    iget-object v1, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->popHeader()Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "header":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p2, v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    if-nez v0, :cond_1

    .line 129
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Header view must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    iget-object v0, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 133
    .restart local v0    # "header":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 134
    new-instance v1, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;

    invoke-direct {v1, p0, p2}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$2;-><init>(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-object v0
.end method

.method private popHeader()Landroid/view/View;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previousPositionHasSameHeader(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleHeaderIfExists(Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;)V
    .locals 2
    .param p1, "wv"    # Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .prologue
    .line 115
    iget-object v0, p1, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 116
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 186
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    if-nez p2, :cond_1

    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;-><init>(Landroid/content/Context;)V

    .line 162
    .end local p2    # "convertView":Landroid/view/View;
    .local v2, "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :goto_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    iget-object v4, v2, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-interface {v3, p1, v4, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "item":Landroid/view/View;
    const/4 v0, 0x0

    .line 164
    .local v0, "header":Landroid/view/View;
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->previousPositionHasSameHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->recycleHeaderIfExists(Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;)V

    .line 169
    :goto_1
    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    instance-of v3, v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;

    if-nez v3, :cond_3

    .line 172
    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;

    .end local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;-><init>(Landroid/content/Context;)V

    .line 176
    .restart local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_0
    :goto_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDividerHeight:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 177
    return-object v2

    .line 161
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    check-cast p2, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    move-object v2, p2

    goto :goto_0

    .line 167
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "item":Landroid/view/View;
    .restart local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    :cond_2
    invoke-direct {p0, v2, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->configureHeader(Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_3
    instance-of v3, v1, Landroid/widget/Checkable;

    if-nez v3, :cond_0

    instance-of v3, v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;

    if-eqz v3, :cond_0

    .line 174
    new-instance v2, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;

    .end local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    iget-object v3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "wv":Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 202
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 207
    return-void
.end method

.method setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 60
    return-void
.end method

.method setDividerHeight(I)V
    .locals 0
    .param p1, "dividerHeight"    # I

    .prologue
    .line 63
    iput p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDividerHeight:I

    .line 64
    return-void
.end method

.method public setOnHeaderClickListener(Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;)V
    .locals 0
    .param p1, "onHeaderClickListener"    # Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    .prologue
    .line 181
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mOnHeaderClickListener:Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper$OnHeaderClickListener;

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/AdapterWrapper;->mDelegate:Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
