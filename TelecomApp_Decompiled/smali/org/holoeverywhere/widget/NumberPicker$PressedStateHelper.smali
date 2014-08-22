.class Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1

.field private static final MODE_PRESS:I = 0x1

.field private static final MODE_TAPPED:I = 0x2


# instance fields
.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 144
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 145
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 151
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 152
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    iput v4, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 157
    iput v4, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 158
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$900(Lorg/holoeverywhere/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lorg/holoeverywhere/widget/NumberPicker;->access$902(Lorg/holoeverywhere/widget/NumberPicker;Z)Z

    .line 161
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$1000(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lorg/holoeverywhere/widget/NumberPicker;->access$1102(Lorg/holoeverywhere/widget/NumberPicker;Z)Z

    .line 165
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1100(Lorg/holoeverywhere/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/holoeverywhere/widget/NumberPicker;->access$1200(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    .line 168
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lorg/holoeverywhere/widget/NumberPicker;->access$902(Lorg/holoeverywhere/widget/NumberPicker;Z)Z

    .line 177
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$1000(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lorg/holoeverywhere/widget/NumberPicker;->access$1102(Lorg/holoeverywhere/widget/NumberPicker;Z)Z

    .line 183
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/holoeverywhere/widget/NumberPicker;->access$1200(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$900(Lorg/holoeverywhere/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # ^= operator for: Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lorg/holoeverywhere/widget/NumberPicker;->access$980(Lorg/holoeverywhere/widget/NumberPicker;I)Z

    .line 196
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lorg/holoeverywhere/widget/NumberPicker;->access$1000(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 201
    :pswitch_5
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lorg/holoeverywhere/widget/NumberPicker;->access$1100(Lorg/holoeverywhere/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # ^= operator for: Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lorg/holoeverywhere/widget/NumberPicker;->access$1180(Lorg/holoeverywhere/widget/NumberPicker;I)Z

    .line 206
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->this$0:Lorg/holoeverywhere/widget/NumberPicker;

    # getter for: Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lorg/holoeverywhere/widget/NumberPicker;->access$1200(Lorg/holoeverywhere/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 189
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
