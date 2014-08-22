.class public Lorg/holoeverywhere/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ArrayAdapter$1;,
        Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mAutoSetNotifyFlag:Z

.field private mContext:Landroid/content/Context;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/widget/ArrayAdapter",
            "<TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private mInflater:Lorg/holoeverywhere/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    iput v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 116
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    iput v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 120
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 92
    iput v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 96
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 124
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ArrayAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lorg/holoeverywhere/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ArrayAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/ArrayAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ArrayAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/ArrayAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ArrayAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lorg/holoeverywhere/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ArrayAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object p1
.end method

.method public static createFromResource(Landroid/content/Context;II)Lorg/holoeverywhere/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textArrayResId"    # I
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Lorg/holoeverywhere/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    .local v0, "strings":[Ljava/lang/CharSequence;
    new-instance v1, Lorg/holoeverywhere/widget/ArrayAdapter;

    invoke-direct {v1, p0, p2, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 182
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    const/4 v3, 0x0

    .line 183
    .local v3, "text":Landroid/widget/TextView;
    if-nez p2, :cond_1

    .line 184
    iget-object v5, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 189
    .local v4, "view":Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_0

    .line 190
    :try_start_0
    iget v5, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    if-lez v5, :cond_2

    .line 191
    iget v5, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 195
    :goto_1
    if-nez v3, :cond_0

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 196
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 199
    :cond_0
    if-nez v3, :cond_3

    .line 200
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "ArrayAdapter"

    const-string v6, "You must supply a resource ID for a TextView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 186
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    move-object v4, p2

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_0

    .line 193
    :cond_2
    const v5, 0x1020014

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, "item":Ljava/lang/Object;, "TT;"
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 210
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_2
    return-object v4

    .line 212
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 262
    invoke-static {p1}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 263
    iput p2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mDropDownResource:I

    iput p2, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mResource:I

    .line 264
    iput-object p4, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    .line 265
    iput p3, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFieldId:I

    .line 266
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_0
    return-void

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 151
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 160
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 164
    :cond_0
    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 167
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 177
    :cond_0
    return-void

    .line 171
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 234
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFilter:Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;-><init>(Lorg/holoeverywhere/widget/ArrayAdapter;Lorg/holoeverywhere/widget/ArrayAdapter$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFilter:Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mFilter:Lorg/holoeverywhere/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 279
    :cond_0
    return-void

    .line 273
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isAutoSetNotifyFlag()Z
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 288
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 291
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 304
    :cond_0
    return-void

    .line 298
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAutoSetNotifyFlag(Z)V
    .locals 0
    .param p1, "autoSetNotifyFlag"    # Z

    .prologue
    .line 307
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mAutoSetNotifyFlag:Z

    .line 308
    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 311
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iput p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mDropDownResource:I

    .line 312
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 315
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 316
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lorg/holoeverywhere/widget/ArrayAdapter;, "Lorg/holoeverywhere/widget/ArrayAdapter<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v1, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 329
    :cond_0
    return-void

    .line 323
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
