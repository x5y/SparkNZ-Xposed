.class public Lorg/holoeverywhere/internal/_View;
.super Landroid/view/View;
.source "_View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final PRESSED_STATE_SET:[I

.field public static final SUPPORT_EMPTY_STATE_SET:[I

.field public static final SUPPORT_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_STATE_SET:[I

.field public static final SUPPORT_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_FOCUSED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_SELECTED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_STATE_SET:[I

.field public static final SUPPORT_PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_SELECTED_STATE_SET:[I

.field public static final SUPPORT_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SUPPORT_WINDOW_FOCUSED_STATE_SET:[I

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final ViewDrawableStates:[I

.field static final Z_VIEW_STATE_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0x14

    const/16 v13, 0xa

    const/4 v12, 0x1

    .line 58
    new-array v9, v13, [I

    fill-array-data v9, :array_0

    sput-object v9, Lorg/holoeverywhere/internal/_View;->ViewDrawableStates:[I

    .line 66
    new-array v9, v14, [I

    fill-array-data v9, :array_1

    sput-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    .line 81
    sget-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lorg/holoeverywhere/internal/_View;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 82
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    :cond_0
    sget-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 86
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v9, Lorg/holoeverywhere/internal/_View;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 87
    sget-object v9, Lorg/holoeverywhere/internal/_View;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 88
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 89
    sget-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 90
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 91
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_3
    sget-object v9, Lorg/holoeverywhere/internal/_View;->Z_VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 96
    .local v0, "NUM_BITS":I
    shl-int v9, v12, v0

    new-array v9, v9, [[I

    sput-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    .line 97
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 99
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 100
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 101
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 102
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 103
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 101
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 106
    :cond_5
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_6
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_EMPTY_STATE_SET:[I

    .line 110
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v12

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_WINDOW_FOCUSED_STATE_SET:[I

    .line 111
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_SELECTED_STATE_SET:[I

    .line 112
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 114
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_FOCUSED_STATE_SET:[I

    .line 115
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 117
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_FOCUSED_SELECTED_STATE_SET:[I

    .line 119
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 121
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_STATE_SET:[I

    .line 122
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 124
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v13

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_SELECTED_STATE_SET:[I

    .line 126
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 128
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_FOCUSED_STATE_SET:[I

    .line 130
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 132
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 134
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 139
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->PRESSED_STATE_SET:[I

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_STATE_SET:[I

    .line 140
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 142
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_SELECTED_STATE_SET:[I

    .line 144
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 146
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    aget-object v9, v9, v14

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_FOCUSED_STATE_SET:[I

    .line 148
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 150
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 152
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 156
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_STATE_SET:[I

    .line 158
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 160
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 162
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 166
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 168
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 172
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 176
    sget-object v9, Lorg/holoeverywhere/internal/_View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Lorg/holoeverywhere/internal/_View;->SUPPORT_PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 180
    return-void

    .line 58
    :array_0
    .array-data 4
        0x10100a7
        0x101009c
        0x10100a1
        0x101009d
        0x101009e
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public static supportResolveSize(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static supportResolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 189
    move v0, p0

    .line 190
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 191
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 192
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 207
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 194
    :sswitch_0
    move v0, p0

    .line 195
    goto :goto_0

    .line 197
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 198
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 200
    :cond_0
    move v0, p0

    .line 202
    goto :goto_0

    .line 204
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getMeasuredStateInt()I
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/_View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/holoeverywhere/internal/_View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method
