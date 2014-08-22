.class Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter$CalendarGestureListener;->this$1:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
