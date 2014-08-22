.class public Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;
.super Ljava/lang/Object;
.source "UsageMeterViewCalculator.java"


# static fields
.field public static final FLOAT_EPSILON:F = 1.0E-7f

.field public static final MIN_WIDTH:F = 0.05f


# instance fields
.field private actualUsageLimit:F

.field private effectiveUsageLimit:F

.field private effectiveUsageLimitMultiplier:F

.field private hardUsageLimit:F

.field private hardUsageLimitMultiplier:F

.field private selfUsage:F

.field private selfUsageMultiplier:F

.field private softUsageLimit:F

.field private softUsageLimitMultiplier:F

.field private totalUsage:F

.field private totalUsageMultiplier:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    .line 9
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    .line 10
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    .line 11
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 12
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    .line 13
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    .line 14
    const/high16 v0, -0x40800000

    iput v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    .line 15
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    .line 16
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    .line 17
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    .line 18
    iput v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    return-void
.end method

.method public static isEqual(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 245
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGreaterThan(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 237
    sub-float v0, p0, p1

    const v1, 0x33d6bf95

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLessThan(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 241
    sub-float v0, p1, p0

    const v1, 0x33d6bf95

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateMultipliers()V
    .locals 12

    .prologue
    const v11, 0x3dcccccd

    const/4 v10, 0x0

    const v9, 0x3d4ccccd

    .line 89
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 91
    .local v0, "actualUsage":F
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    invoke-static {v0, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    .line 96
    :goto_0
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    invoke-static {v0, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 97
    iput v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    .line 101
    :goto_1
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    div-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    .line 102
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_0

    .line 103
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    div-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 105
    :cond_0
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1

    .line 106
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    div-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    .line 108
    :cond_1
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    div-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    .line 109
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    div-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    .line 111
    iget v6, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    .line 112
    .local v6, "localTotalUsageMultiplier":F
    iget v4, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 113
    .local v4, "localSelfUsageMultiplier":F
    iget v5, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    .line 114
    .local v5, "localSoftUsageLimitMultiplier":F
    iget v3, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    .line 115
    .local v3, "localHardUsageLimitMultiplier":F
    iget v2, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    .line 149
    .local v2, "localEffectiveUsageLimitMultiplier":F
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isOverage()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 150
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    invoke-static {v7, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 152
    invoke-static {v3, v6}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_7

    sub-float v7, v6, v9

    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 153
    sub-float v7, v6, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    .line 163
    :cond_2
    :goto_2
    invoke-static {v4, v3}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isEqual(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 164
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 177
    :cond_3
    :goto_3
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    invoke-static {v7, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    cmpg-float v7, v3, v11

    if-gez v7, :cond_c

    .line 179
    iput v10, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    .line 228
    :cond_4
    :goto_4
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 229
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    .line 234
    :goto_5
    return-void

    .line 94
    .end local v2    # "localEffectiveUsageLimitMultiplier":F
    .end local v3    # "localHardUsageLimitMultiplier":F
    .end local v4    # "localSelfUsageMultiplier":F
    .end local v5    # "localSoftUsageLimitMultiplier":F
    .end local v6    # "localTotalUsageMultiplier":F
    :cond_5
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    goto/16 :goto_0

    .line 99
    :cond_6
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    goto/16 :goto_1

    .line 154
    .restart local v2    # "localEffectiveUsageLimitMultiplier":F
    .restart local v3    # "localHardUsageLimitMultiplier":F
    .restart local v4    # "localSelfUsageMultiplier":F
    .restart local v5    # "localSoftUsageLimitMultiplier":F
    .restart local v6    # "localTotalUsageMultiplier":F
    :cond_7
    invoke-static {v3, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    sub-float v1, v3, v4

    .line 157
    .local v1, "difference":F
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    .line 158
    invoke-static {v1, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    iput v11, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    goto :goto_2

    .line 165
    .end local v1    # "difference":F
    :cond_8
    sub-float v7, v3, v9

    invoke-static {v4, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v4, v3}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 166
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    sub-float/2addr v7, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    goto :goto_3

    .line 167
    :cond_9
    invoke-static {v4, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    goto :goto_3

    .line 171
    :cond_a
    sub-float v7, v6, v9

    invoke-static {v2, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 172
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    sub-float/2addr v7, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    goto :goto_3

    .line 173
    :cond_b
    invoke-static {v2, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    goto :goto_3

    .line 181
    :cond_c
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    div-float/2addr v7, v8

    iget v8, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    mul-float/2addr v7, v8

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    goto :goto_4

    .line 185
    :cond_d
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    invoke-static {v7, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 186
    sub-float v7, v6, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 188
    .restart local v1    # "difference":F
    invoke-static {v6, v4}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isEqual(FF)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v6, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 189
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    .line 190
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 199
    :cond_e
    :goto_6
    invoke-static {v1, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {v1, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 200
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    const/high16 v8, 0x3f000000

    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 201
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    add-float/2addr v7, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto/16 :goto_4

    .line 191
    :cond_f
    invoke-static {v4, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 192
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    .line 193
    invoke-static {v6, v4}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v6, v11}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 194
    iput v11, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto :goto_6

    .line 196
    :cond_10
    sub-float v7, v3, v9

    invoke-static {v6, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v6, v3}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 197
    sub-float v7, v3, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto :goto_6

    .line 203
    :cond_11
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    sub-float/2addr v7, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    goto/16 :goto_4

    .line 205
    :cond_12
    invoke-static {v6, v4}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isEqual(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    goto/16 :goto_4

    .line 208
    .end local v1    # "difference":F
    :cond_13
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    invoke-static {v7, v10}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_15

    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    invoke-static {v6, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 209
    add-float v7, v5, v9

    invoke-static {v6, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 210
    add-float v7, v5, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto/16 :goto_4

    .line 211
    :cond_14
    sub-float v7, v3, v9

    invoke-static {v6, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6, v3}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    sub-float v7, v3, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto/16 :goto_4

    .line 215
    :cond_15
    invoke-static {v6, v9}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 216
    iput v9, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto/16 :goto_4

    .line 217
    :cond_16
    sub-float v7, v2, v9

    invoke-static {v6, v7}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6, v2}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isLessThan(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    sub-float v7, v2, v9

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    goto/16 :goto_4

    .line 231
    :cond_17
    iget v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    iput v7, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    goto/16 :goto_5
.end method


# virtual methods
.method public drawSoftLimitMarker()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    iget v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    const v1, 0x3dcccccd

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectiveUsageLimit()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    return v0
.end method

.method public getEffectiveUsageLimitMultiplier()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimitMultiplier:F

    return v0
.end method

.method public getHardUsageLimit()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    return v0
.end method

.method public getHardUsageLimitMultiplier()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimitMultiplier:F

    return v0
.end method

.method public getSelfUsage()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    return v0
.end method

.method public getSelfUsageMultiplier()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsageMultiplier:F

    return v0
.end method

.method public getSoftUsageLimit()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    return v0
.end method

.method public getSoftUsageLimitMultiplier()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimitMultiplier:F

    return v0
.end method

.method public getTotalUsage()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    return v0
.end method

.method public getTotalUsageMultiplier()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsageMultiplier:F

    return v0
.end method

.method public isOverage()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->actualUsageLimit:F

    iget v1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->effectiveUsageLimit:F

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->isGreaterThan(FF)Z

    move-result v0

    return v0
.end method

.method public setHardUsageLimit(F)V
    .locals 0
    .param p1, "hardUsageLimit"    # F

    .prologue
    .line 31
    iput p1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->hardUsageLimit:F

    .line 32
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->recalculateMultipliers()V

    .line 33
    return-void
.end method

.method public setSelfUsage(F)V
    .locals 0
    .param p1, "selfUsage"    # F

    .prologue
    .line 26
    iput p1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->selfUsage:F

    .line 27
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->recalculateMultipliers()V

    .line 28
    return-void
.end method

.method public setSoftUsageLimit(F)V
    .locals 0
    .param p1, "softUsageLimit"    # F

    .prologue
    .line 36
    iput p1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->softUsageLimit:F

    .line 37
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->recalculateMultipliers()V

    .line 38
    return-void
.end method

.method public setTotalUsage(F)V
    .locals 0
    .param p1, "totalUsage"    # F

    .prologue
    .line 21
    iput p1, p0, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->totalUsage:F

    .line 22
    invoke-direct {p0}, Lnz/co/telecom/smartphone/widget/helper/UsageMeterViewCalculator;->recalculateMultipliers()V

    .line 23
    return-void
.end method
