.class public Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;,
        Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sFrameDelay:J

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 99
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 108
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 120
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 128
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 136
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 145
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;-><init>()V

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 156
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 162
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 172
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 188
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 198
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 204
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 210
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 217
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 227
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 241
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 285
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 44
    sget-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 1

    .prologue
    .line 1251
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1252
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1253
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1254
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 1073
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_1

    .line 1074
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1075
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    .line 1086
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1077
    :cond_1
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1078
    .local v0, "deltaTime":J
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1081
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1082
    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1027
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1028
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1029
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1030
    iput v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1031
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1032
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1033
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1034
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1035
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1036
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 1040
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 1041
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1241
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 717
    sget-wide v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 316
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 317
    .local v0, "anim":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    .line 318
    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 299
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 300
    .local v0, "anim":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    .line 301
    return-object v0
.end method

.method public static varargs ofObject(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 353
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 354
    .local v0, "anim":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 355
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 356
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .prologue
    .line 330
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 331
    .local v0, "anim":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 332
    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 730
    sput-wide p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    .line 731
    return-void
.end method

.method private start(Z)V
    .locals 10
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 919
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 920
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 922
    :cond_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 923
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 924
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 925
    iput-boolean v9, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 926
    iput-boolean v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 927
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    iget-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 930
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 931
    iput v8, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 932
    iput-boolean v9, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 934
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 935
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 937
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 938
    .local v2, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 939
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    .line 944
    .local v0, "animationHandler":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_2

    .line 945
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    .end local v0    # "animationHandler":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$1;)V

    .line 946
    .restart local v0    # "animationHandler":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;
    sget-object v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 948
    :cond_2
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 949
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 1049
    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-wide v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1053
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1054
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1055
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1056
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1057
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1171
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1172
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 1173
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1174
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1178
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1179
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1180
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1183
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    .line 1102
    const/4 v0, 0x0

    .line 1104
    .local v0, "done":Z
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1105
    iput v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1106
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    .line 1107
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1114
    :cond_0
    :goto_0
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1145
    :goto_1
    return v0

    .line 1109
    :cond_1
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1111
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1117
    :pswitch_0
    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    .line 1118
    .local v1, "fraction":F
    :goto_2
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_6

    .line 1119
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_2

    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 1121
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1122
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1123
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1124
    iget-object v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 1123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_3
    move v1, v6

    .line 1117
    goto :goto_2

    .line 1127
    .restart local v1    # "fraction":F
    :cond_4
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 1128
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1130
    :cond_5
    iget v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 1131
    rem-float/2addr v1, v6

    .line 1132
    iget-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1138
    :cond_6
    :goto_5
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    .line 1139
    sub-float v1, v6, v1

    .line 1141
    :cond_7
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_8
    move v4, v5

    .line 1128
    goto :goto_4

    .line 1134
    :cond_9
    const/4 v0, 0x1

    .line 1135
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 960
    iget v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v3, :cond_0

    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 961
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    :cond_0
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 964
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 965
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 966
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    .line 967
    .local v1, "listener":Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto :goto_0

    .line 970
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    .line 972
    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1187
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 1188
    .local v0, "anim":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    iget-object v7, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1189
    iget-object v5, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1190
    .local v5, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1191
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1192
    .local v3, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1193
    iget-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v5    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 1197
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1198
    iput v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 1199
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 1200
    iput v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 1201
    iput-boolean v9, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 1202
    iget-object v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 1203
    .local v6, "oldValues":[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1204
    array-length v4, v6

    .line 1205
    .local v4, "numValues":I
    new-array v7, v4, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 1206
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1207
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1208
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1209
    .local v2, "newValuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1210
    iget-object v7, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1213
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .end local v4    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 976
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 979
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    .line 985
    :cond_0
    :goto_0
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 990
    :goto_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    .line 991
    return-void

    .line 980
    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 988
    :cond_2
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 765
    .local v0, "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 769
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 558
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 491
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 493
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 494
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->init()V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 498
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 995
    iget v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1011
    iget-boolean v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1012
    iget v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 1013
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1014
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1015
    .local v0, "currentPlayTime":J
    iget-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 1016
    .local v4, "timeLeft":J
    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 1020
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_1
    return-void

    .line 1011
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1018
    :cond_1
    invoke-direct {p0, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .param p1, "playTime"    # J

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 540
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 541
    .local v0, "currentTime":J
    iget v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 542
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 543
    const/4 v2, 0x2

    iput v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 545
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 546
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    .line 547
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 511
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mDuration:J

    .line 516
    return-object p0
.end method

.method public setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;

    .prologue
    .line 900
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 903
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 402
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 406
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 412
    :goto_1
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 409
    .local v0, "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 374
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 378
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 384
    :goto_1
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 381
    .local v0, "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 867
    if-eqz p1, :cond_0

    .line 868
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 872
    :goto_0
    return-void

    .line 870
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 434
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 438
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const-string v3, ""

    const/4 v1, 0x0

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 445
    :goto_1
    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 442
    .local v0, "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 782
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    .line 783
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 802
    iput p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 803
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .param p1, "startDelay"    # J

    .prologue
    .line 704
    iput-wide p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 705
    return-void
.end method

.method public varargs setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .prologue
    .line 457
    array-length v1, p1

    .line 458
    .local v1, "numValues":I
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    .line 459
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 461
    aget-object v2, p1, v0

    .line 462
    .local v2, "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v2    # "valuesHolder":Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 466
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start(Z)V

    .line 954
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1264
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
