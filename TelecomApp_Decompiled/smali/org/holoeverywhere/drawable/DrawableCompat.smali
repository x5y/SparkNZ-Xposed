.class public final Lorg/holoeverywhere/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field private static final CLASS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDrawableCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->sDrawableCache:Landroid/support/v4/util/LongSparseArray;

    .line 29
    sget-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    const-string v1, "rotate"

    const-class v2, Lorg/holoeverywhere/drawable/RotateDrawable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    const-string v1, "layer-list"

    const-class v2, Lorg/holoeverywhere/drawable/LayerDrawable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    const-string v1, "selector"

    const-class v2, Lorg/holoeverywhere/drawable/StateListDrawable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    const-string v1, "color"

    const-class v2, Lorg/holoeverywhere/drawable/ColorDrawable;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0, p0, p1, v0}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 55
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 57
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 60
    :cond_1
    if-eq v2, v4, :cond_2

    .line 61
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_2
    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 65
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lorg/holoeverywhere/drawable/DrawableCompat;->CLASS_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 76
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 85
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 78
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v4, 0x2e

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 81
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Error while inflating drawable resource"

    invoke-direct {v4, v5, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_1
.end method

.method private static getCachedDrawable(JLandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "key"    # J
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    sget-object v2, Lorg/holoeverywhere/drawable/DrawableCompat;->sDrawableCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 93
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 95
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 98
    .restart local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Lorg/holoeverywhere/drawable/DrawableCompat;->sDrawableCache:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 101
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 107
    invoke-static {p0, v0}, Lorg/holoeverywhere/drawable/DrawableCompat;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 113
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/holoeverywhere/drawable/DrawableCompat;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    if-eqz p1, :cond_0

    iget v9, p1, Landroid/util/TypedValue;->resourceId:I

    if-gtz v9, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v9, v9

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    iget v11, p1, Landroid/util/TypedValue;->data:I

    int-to-long v11, v11

    or-long v5, v9, v11

    .line 122
    .local v5, "key":J
    invoke-static {v5, v6, p0}, Lorg/holoeverywhere/drawable/DrawableCompat;->getCachedDrawable(JLandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_2

    .line 128
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resource is not a Drawable (color or path): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 130
    :cond_2
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "file":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    iget v10, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v9, v10, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 135
    .local v8, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v8}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_1
    if-eqz v1, :cond_0

    .line 160
    iget v9, p1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    sget-object v9, Lorg/holoeverywhere/drawable/DrawableCompat;->sDrawableCache:Landroid/support/v4/util/LongSparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v5, v6, v10}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v7

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    iget v10, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v9, v10, v3}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    .line 149
    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {p0, p1, v4, v3, v9}, Lorg/holoeverywhere/drawable/DrawableCompat;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 152
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 156
    throw v7
.end method
