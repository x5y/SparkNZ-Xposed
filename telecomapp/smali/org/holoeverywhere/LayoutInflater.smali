.class public Lorg/holoeverywhere/LayoutInflater;
.super Landroid/view/LayoutInflater;
.source "LayoutInflater.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;,
        Lorg/holoeverywhere/LayoutInflater$LayoutInflaterCreator;,
        Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;,
        Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;,
        Lorg/holoeverywhere/LayoutInflater$Factory;,
        Lorg/holoeverywhere/LayoutInflater$BlinkLayout;
    }
.end annotation


# static fields
.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sFinishInflateMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lorg/holoeverywhere/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private static sListener:Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;

.field private static final sPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChildFragment:Lorg/holoeverywhere/app/Fragment;

.field private mClonedInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lorg/holoeverywhere/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/LayoutInflater$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private mFragmentChildInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/holoeverywhere/app/Fragment;",
            "Lorg/holoeverywhere/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private mParentInflater:Lorg/holoeverywhere/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sFinishInflateMethods:Ljava/util/Map;

    .line 154
    new-instance v0, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v0}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sInstances:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sPackages:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/LayoutInflater;->sRemaps:Ljava/util/Map;

    .line 164
    const-string v0, "android.webkit"

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->registerPackage(Ljava/lang/String;)V

    .line 165
    const-string v0, "android.view"

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->registerPackage(Ljava/lang/String;)V

    .line 166
    const-string v0, "android.widget"

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->registerPackage(Ljava/lang/String;)V

    .line 167
    const-string v0, "android.support.v4.view"

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->registerPackage(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/holoeverywhere/HoloEverywhere;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".widget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->registerPackage(Ljava/lang/String;)V

    .line 170
    const-class v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 171
    const-class v0, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 172
    const-class v0, Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 173
    const-class v0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 174
    const-class v0, Lorg/holoeverywhere/internal/DialogTitle;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 175
    const-class v0, Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->asInternal(Ljava/lang/Class;)V

    .line 176
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V

    .line 310
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childFragment"    # Lorg/holoeverywhere/app/Fragment;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iput-object p2, p0, Lorg/holoeverywhere/LayoutInflater;->mChildFragment:Lorg/holoeverywhere/app/Fragment;

    .line 318
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    .line 319
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sListener:Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sListener:Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;->onInitInflater(Lorg/holoeverywhere/LayoutInflater;)V

    .line 322
    :cond_1
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V

    .line 300
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;
    .param p3, "childFragment"    # Lorg/holoeverywhere/app/Fragment;

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V

    .line 305
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/LayoutInflater;->setParent(Landroid/view/LayoutInflater;)Lorg/holoeverywhere/LayoutInflater;

    .line 306
    return-void
.end method

.method private static asInternal(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/holoeverywhere/LayoutInflater;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private checkFactoryOnNull(Lorg/holoeverywhere/LayoutInflater$Factory;)V
    .locals 2
    .param p1, "factory"    # Lorg/holoeverywhere/LayoutInflater$Factory;

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 463
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-object v1, Lorg/holoeverywhere/LayoutInflater;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/LayoutInflater;

    .line 191
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    if-nez v0, :cond_0

    .line 192
    sget-object v1, Lorg/holoeverywhere/LayoutInflater;->sInstances:Ljava/util/Map;

    new-instance v0, Lorg/holoeverywhere/LayoutInflater;

    .end local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    invoke-direct {v0, p0}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/content/Context;)V

    .restart local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    return-object v0
.end method

.method public static from(Landroid/view/LayoutInflater;)Lorg/holoeverywhere/LayoutInflater;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 183
    instance-of v0, p0, Lorg/holoeverywhere/LayoutInflater;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Lorg/holoeverywhere/LayoutInflater;

    .line 186
    .end local p0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object p0

    .restart local p0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/LayoutInflater;->setParent(Landroid/view/LayoutInflater;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object p0

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I

    .prologue
    .line 198
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 202
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 207
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 608
    const/16 v19, 0x0

    const-string v20, "layout"

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 609
    .local v13, "layout":I
    if-nez v13, :cond_1

    .line 610
    const/16 v19, 0x0

    const-string v20, "layout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 611
    .local v16, "value":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 612
    new-instance v19, Landroid/view/InflateException;

    const-string v20, "You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 615
    :cond_0
    new-instance v19, Landroid/view/InflateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "You must specifiy a valid layout reference. The layout ID "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is not valid."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 619
    .end local v16    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 622
    .local v8, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 623
    .local v6, "childAttrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v15, v0, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_2

    .line 627
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v15, v0, :cond_4

    .line 628
    new-instance v19, Landroid/view/InflateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": No start tag found!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v15    # "type":I
    :catchall_0
    move-exception v19

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    throw v19

    .line 631
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v15    # "type":I
    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "childName":Ljava/lang/String;
    const-string v19, "merge"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 633
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v6, v2}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 679
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 681
    .local v9, "currentDepth":I
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v9, :cond_7

    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    .line 684
    :cond_7
    return-void

    .line 635
    .end local v9    # "currentDepth":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v6}, Lorg/holoeverywhere/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v17

    .line 636
    .local v17, "view":Landroid/view/View;
    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    .local v11, "group":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 639
    .local v14, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v14

    .line 643
    if-eqz v14, :cond_9

    .line 644
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    :cond_9
    :goto_1
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v6, v2}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 653
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 654
    .local v12, "id":I
    const/16 v19, 0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 655
    .local v18, "visibility":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 656
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_a

    .line 657
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 659
    :cond_a
    packed-switch v18, :pswitch_data_0

    .line 670
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 640
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "id":I
    .end local v18    # "visibility":I
    :catch_0
    move-exception v10

    .line 641
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v14

    .line 643
    if-eqz v14, :cond_9

    .line 644
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 643
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v19

    if-eqz v14, :cond_b

    .line 644
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    throw v19

    .line 661
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v12    # "id":I
    .restart local v18    # "visibility":I
    :pswitch_0
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 664
    :pswitch_1
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 667
    :pswitch_2
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 677
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v7    # "childName":Ljava/lang/String;
    .end local v8    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "group":Landroid/view/ViewGroup;
    .end local v12    # "id":I
    .end local v13    # "layout":I
    .end local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "type":I
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "visibility":I
    :cond_c
    new-instance v19, Landroid/view/InflateException;

    const-string v20, "<include /> can only be used inside of a ViewGroup"

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 648
    nop

    :array_0
    .array-data 4
        0x10100d0
        0x10100dc
    .end array-data

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 690
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 692
    .local v0, "currentDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 695
    :cond_2
    return-void
.end method

.method private prepareView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 699
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->DISABLE_OVERSCROLL_EFFECT:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 700
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 702
    :cond_0
    return-object p1
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/holoeverywhere/LayoutInflater;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sRemaps:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public static varargs register([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/view/View;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 215
    .local v1, "classe":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-static {v1}, Lorg/holoeverywhere/LayoutInflater;->register(Ljava/lang/Class;)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "classe":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_0
    return-void
.end method

.method public static registerPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p0}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    .line 242
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sPackages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    return-void
.end method

.method public static remap(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->register(Ljava/lang/Class;)V

    .line 261
    return-void
.end method

.method public static varargs remap(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "classess"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 266
    .local v1, "clazz":Ljava/lang/String;
    sget-object v4, Lorg/holoeverywhere/LayoutInflater;->sRemaps:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "clazz":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static varargs remap([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-static {p0}, Lorg/holoeverywhere/LayoutInflater;->register([Ljava/lang/Class;)V

    .line 253
    return-void
.end method

.method public static remapHard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    invoke-static {p0, p1}, Lorg/holoeverywhere/LayoutInflater;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    sget-object v0, Lorg/holoeverywhere/LayoutInflater;->sInstances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public static setOnInitInflaterListener(Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;)V
    .locals 0
    .param p0, "listener"    # Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;

    .prologue
    .line 283
    sput-object p0, Lorg/holoeverywhere/LayoutInflater;->sListener:Lorg/holoeverywhere/LayoutInflater$OnInitInflaterListener;

    .line 284
    return-void
.end method


# virtual methods
.method public _createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 326
    sget-object v10, Lorg/holoeverywhere/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 327
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 329
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    if-nez v5, :cond_4

    .line 330
    :try_start_0
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-eqz p2, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 332
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 333
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v10, v4}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v1

    .line 334
    .local v1, "allowed":Z
    if-nez v1, :cond_0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 338
    .end local v1    # "allowed":Z
    :cond_0
    sget-object v10, Lorg/holoeverywhere/LayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 339
    sget-object v10, Lorg/holoeverywhere/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 357
    .local v3, "args":[Ljava/lang/Object;
    const/4 v10, 0x1

    aput-object p3, v3, v10

    .line 358
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 359
    .local v8, "view":Landroid/view/View;
    instance-of v10, v8, Landroid/view/ViewStub;

    if-eqz v10, :cond_2

    .line 360
    move-object v0, v8

    check-cast v0, Landroid/view/ViewStub;

    move-object v9, v0

    .line 361
    .local v9, "viewStub":Landroid/view/ViewStub;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    .line 362
    invoke-virtual {v9, p0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 365
    .end local v9    # "viewStub":Landroid/view/ViewStub;
    :cond_2
    return-object v8

    .end local v3    # "args":[Ljava/lang/Object;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    move-object v10, p1

    .line 330
    goto :goto_0

    .line 341
    :cond_4
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v10, :cond_1

    .line 342
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 343
    .local v2, "allowedState":Ljava/lang/Boolean;
    if-nez v2, :cond_8

    .line 344
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-eqz p2, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 346
    if-eqz v4, :cond_7

    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v10, v4}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 347
    .restart local v1    # "allowed":Z
    :goto_3
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    if-nez v1, :cond_1

    .line 349
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 366
    .end local v1    # "allowed":Z
    .end local v2    # "allowedState":Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    .line 367
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Landroid/view/InflateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Error inflating class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 370
    .local v7, "ie":Landroid/view/InflateException;
    invoke-virtual {v7, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 371
    throw v7

    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v7    # "ie":Landroid/view/InflateException;
    .restart local v2    # "allowedState":Ljava/lang/Boolean;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_6
    move-object v10, p1

    .line 344
    goto :goto_2

    .line 346
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 351
    :cond_8
    :try_start_1
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 352
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 373
    .end local v2    # "allowedState":Ljava/lang/Boolean;
    :catch_1
    move-exception v6

    .line 374
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v7, Landroid/view/InflateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Class is not a View "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v7    # "ie":Landroid/view/InflateException;
    invoke-virtual {v7, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 378
    throw v7

    .line 379
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .end local v7    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 380
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    throw v6

    .line 381
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v6

    .line 382
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/view/InflateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Error inflating class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v4, :cond_a

    const-string v10, "<unknown>"

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v7    # "ie":Landroid/view/InflateException;
    invoke-virtual {v7, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 386
    throw v7

    .line 382
    .end local v7    # "ie":Landroid/view/InflateException;
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_4
.end method

.method public addFactory(Lorg/holoeverywhere/LayoutInflater$Factory;)V
    .locals 1
    .param p1, "factory"    # Lorg/holoeverywhere/LayoutInflater$Factory;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lorg/holoeverywhere/LayoutInflater;->checkFactoryOnNull(Lorg/holoeverywhere/LayoutInflater$Factory;)V

    .line 392
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public addFactory(Lorg/holoeverywhere/LayoutInflater$Factory;I)V
    .locals 1
    .param p1, "factory"    # Lorg/holoeverywhere/LayoutInflater$Factory;
    .param p2, "index"    # I

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lorg/holoeverywhere/LayoutInflater;->checkFactoryOnNull(Lorg/holoeverywhere/LayoutInflater$Factory;)V

    .line 400
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 404
    return-void
.end method

.method public bridge synthetic cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/LayoutInflater;->cloneInContext(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public cloneInContext(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 414
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mClonedInstances:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mClonedInstances:Ljava/util/Map;

    .line 417
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mClonedInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/LayoutInflater;

    .line 418
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    if-nez v0, :cond_1

    .line 419
    new-instance v0, Lorg/holoeverywhere/LayoutInflater;

    .end local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 420
    .restart local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mClonedInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_1
    return-object v0
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 426
    const-string v4, "fragment"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    iget-object v4, p0, Lorg/holoeverywhere/LayoutInflater;->mChildFragment:Lorg/holoeverywhere/app/Fragment;

    invoke-static {p0, p3, p1, v4}, Landroid/support/v4/app/_HoloFragmentInflater;->inflate(Lorg/holoeverywhere/LayoutInflater;Landroid/util/AttributeSet;Landroid/view/View;Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v4

    .line 446
    :goto_0
    return-object v4

    .line 430
    :cond_0
    const-string v4, "view"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    const/4 v4, 0x0

    const-string v5, "class"

    invoke-interface {p3, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 434
    :cond_1
    const/4 v3, 0x0

    .line 435
    .local v3, "view":Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 437
    iget-object v4, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/holoeverywhere/LayoutInflater$Factory;

    iget-object v5, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-interface {v4, p1, p2, v5, p3}, Lorg/holoeverywhere/LayoutInflater$Factory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 438
    if-eqz v3, :cond_4

    .line 443
    .end local v1    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 446
    :cond_3
    invoke-direct {p0, v3}, Lorg/holoeverywhere/LayoutInflater;->prepareView(Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 436
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 449
    .end local v0    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Error inflating class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "ie":Landroid/view/InflateException;
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 453
    throw v2

    .line 454
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Error inflating class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 457
    .restart local v2    # "ie":Landroid/view/InflateException;
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 458
    throw v2
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public getFragmentActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 478
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 483
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/holoeverywhere/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 492
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 497
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 503
    iget-object v9, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v9

    .line 504
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 505
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v8, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v11, v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    move-object v5, p2

    .line 509
    .local v5, "result":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 513
    :cond_1
    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 514
    new-instance v8, Landroid/view/InflateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": No start tag found!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 549
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v8

    :try_start_3
    iget-object v10, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    throw v8

    .line 560
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "result":Landroid/view/View;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 517
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "result":Landroid/view/View;
    .restart local v7    # "type":I
    :cond_2
    :try_start_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "name":Ljava/lang/String;
    const-string v8, "merge"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 519
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 520
    :cond_3
    new-instance v8, Landroid/view/InflateException;

    const-string v10, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v8, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 550
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_1
    move-exception v1

    .line 551
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 555
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 523
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Landroid/view/InflateException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_4
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {p0, p1, p2, v0, v8}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 557
    :cond_5
    :goto_0
    :try_start_7
    iget-object v8, p0, Lorg/holoeverywhere/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v8, v10

    .line 559
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v5

    .line 526
    :cond_6
    :try_start_8
    const-string v8, "blink"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 527
    new-instance v6, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    iget-object v8, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v0}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 531
    .local v6, "temp":Landroid/view/View;
    :goto_1
    const/4 v4, 0x0

    .line 532
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_7

    .line 533
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 534
    if-nez p3, :cond_7

    .line 535
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v6, v0, v8}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 539
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 540
    invoke-virtual {p2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    :cond_8
    if-eqz p2, :cond_9

    if-nez p3, :cond_5

    .line 543
    :cond_9
    move-object v5, v6

    goto :goto_0

    .line 529
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "temp":Landroid/view/View;
    :cond_a
    invoke-virtual {p0, p2, v3, v0}, Lorg/holoeverywhere/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v6

    .restart local v6    # "temp":Landroid/view/View;
    goto :goto_1
.end method

.method public obtainFragmentChildInflater(Lorg/holoeverywhere/app/Fragment;)Lorg/holoeverywhere/LayoutInflater;
    .locals 3
    .param p1, "fragment"    # Lorg/holoeverywhere/app/Fragment;

    .prologue
    .line 564
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    invoke-virtual {v1, p1}, Lorg/holoeverywhere/LayoutInflater;->obtainFragmentChildInflater(Lorg/holoeverywhere/app/Fragment;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 575
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentChildInstances:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 568
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v1}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentChildInstances:Ljava/util/Map;

    .line 570
    :cond_2
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentChildInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/LayoutInflater;

    .line 571
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    if-nez v0, :cond_0

    .line 572
    iget-object v1, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentChildInstances:Ljava/util/Map;

    new-instance v0, Lorg/holoeverywhere/LayoutInflater;

    .end local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1}, Lorg/holoeverywhere/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lorg/holoeverywhere/app/Fragment;)V

    .restart local v0    # "inflater":Lorg/holoeverywhere/LayoutInflater;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 582
    sget-object v3, Lorg/holoeverywhere/LayoutInflater;->sRemaps:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 583
    .local v1, "newName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {p0, v1, v4, p3}, Lorg/holoeverywhere/LayoutInflater;->_createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 585
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 596
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 589
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 590
    invoke-virtual {p0, p2, v4, p3}, Lorg/holoeverywhere/LayoutInflater;->_createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 592
    :cond_2
    sget-object v3, Lorg/holoeverywhere/LayoutInflater;->sPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 594
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/holoeverywhere/LayoutInflater;->sPackages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3, p3}, Lorg/holoeverywhere/LayoutInflater;->_createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 595
    .restart local v2    # "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 592
    .end local v2    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 601
    :cond_3
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 598
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 710
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v1, :cond_7

    :cond_1
    const/4 v9, 0x1

    if-eq v6, v9, :cond_7

    .line 711
    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 714
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, "name":Ljava/lang/String;
    const-string v9, "requestFocus"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 716
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/LayoutInflater;->parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    goto :goto_0

    .line 717
    :cond_2
    const-string v9, "include"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 718
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-nez v9, :cond_3

    .line 719
    new-instance v9, Landroid/view/InflateException;

    const-string v10, "<include /> cannot be the root element"

    invoke-direct {v9, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 721
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 722
    :cond_4
    const-string v9, "merge"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 723
    new-instance v9, Landroid/view/InflateException;

    const-string v10, "<merge /> must be the root element"

    invoke-direct {v9, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 724
    :cond_5
    const-string v9, "blink"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 725
    new-instance v7, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;

    iget-object v9, p0, Lorg/holoeverywhere/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, p3}, Lorg/holoeverywhere/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v7, "view":Landroid/view/View;
    move-object v8, p2

    .line 726
    check-cast v8, Landroid/view/ViewGroup;

    .line 727
    .local v8, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v8, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 728
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v7, p3, v9}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 729
    invoke-virtual {v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 731
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {p0, p2, v4, p3}, Lorg/holoeverywhere/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "view":Landroid/view/View;
    move-object v8, p2

    .line 732
    check-cast v8, Landroid/view/ViewGroup;

    .line 733
    .restart local v8    # "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v8, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 734
    .restart local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v7, p3, v9}, Lorg/holoeverywhere/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 735
    invoke-virtual {v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 738
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "viewGroup":Landroid/view/ViewGroup;
    :cond_7
    if-eqz p4, :cond_a

    .line 739
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 740
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v9, Lorg/holoeverywhere/LayoutInflater;->sFinishInflateMethods:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 741
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_9

    .line 742
    :goto_1
    const-class v9, Ljava/lang/Object;

    if-eq v0, v9, :cond_8

    if-nez v3, :cond_8

    .line 744
    :try_start_0
    const-string v10, "onFinishInflate"

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 745
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 747
    goto :goto_1

    .line 749
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    if-eqz v3, :cond_9

    .line 750
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 751
    sget-object v9, Lorg/holoeverywhere/LayoutInflater;->sFinishInflateMethods:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_9
    if-eqz v3, :cond_a

    .line 756
    const/4 v9, 0x0

    :try_start_1
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_a
    :goto_2
    return-void

    .line 757
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 765
    new-instance v0, Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;

    invoke-direct {v0, p1}, Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;-><init>(Landroid/view/LayoutInflater$Factory;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/LayoutInflater;->setFactory(Lorg/holoeverywhere/LayoutInflater$Factory;)V

    .line 766
    return-void
.end method

.method public setFactory(Lorg/holoeverywhere/LayoutInflater$Factory;)V
    .locals 1
    .param p1, "factory"    # Lorg/holoeverywhere/LayoutInflater$Factory;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/LayoutInflater;->addFactory(Lorg/holoeverywhere/LayoutInflater$Factory;I)V

    .line 770
    return-void
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 1
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 774
    new-instance v0, Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;

    invoke-direct {v0, p1}, Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;-><init>(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/LayoutInflater;->setFactory(Lorg/holoeverywhere/LayoutInflater$Factory;)V

    .line 775
    return-void
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 780
    if-eqz p1, :cond_0

    .line 781
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 783
    :cond_0
    return-void
.end method

.method public setFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 786
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater;->mFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 787
    return-void
.end method

.method protected setParent(Landroid/view/LayoutInflater;)Lorg/holoeverywhere/LayoutInflater;
    .locals 4
    .param p1, "original"    # Landroid/view/LayoutInflater;

    .prologue
    .line 790
    if-ne p1, p0, :cond_1

    .line 815
    .end local p1    # "original":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-object p0

    .line 793
    .restart local p1    # "original":Landroid/view/LayoutInflater;
    :cond_1
    instance-of v2, p1, Lorg/holoeverywhere/LayoutInflater;

    if-eqz v2, :cond_2

    .line 794
    check-cast p1, Lorg/holoeverywhere/LayoutInflater;

    .end local p1    # "original":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 795
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    iget-object v2, v2, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    iput-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 796
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    iget-object v2, v2, Lorg/holoeverywhere/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    iput-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 797
    iget-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    iget-object v2, v2, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    iput-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mFactories:Ljava/util/List;

    goto :goto_0

    .line 799
    .restart local p1    # "original":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/holoeverywhere/LayoutInflater;->mParentInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 800
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    .line 801
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    .line 802
    .local v0, "factory":Landroid/view/LayoutInflater$Factory2;
    if-eqz v0, :cond_3

    .line 803
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 806
    .end local v0    # "factory":Landroid/view/LayoutInflater$Factory2;
    :cond_3
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 807
    .local v0, "factory":Landroid/view/LayoutInflater$Factory;
    if-eqz v0, :cond_4

    .line 808
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 810
    :cond_4
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFilter()Landroid/view/LayoutInflater$Filter;

    move-result-object v1

    .line 811
    .local v1, "filter":Landroid/view/LayoutInflater$Filter;
    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    goto :goto_0
.end method
