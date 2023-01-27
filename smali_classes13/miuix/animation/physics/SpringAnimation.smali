.class public final Lmiuix/animation/physics/SpringAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiuix/animation/physics/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    new-instance p1, Lmiuix/animation/physics/SpringForce;

    invoke-direct {p1, p3}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/animation/physics/SpringForce;

    invoke-direct {v0, p1}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    :cond_1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :goto_0
    return-void
.end method

.method public canSkipToEnd()Z
    .locals 4

    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getAcceleration(FF)F
    .locals 0

    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/SpringForce;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public getSpring()Lmiuix/animation/physics/SpringForce;
    .locals 0

    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-object p0
.end method

.method isAtEquilibrium(FF)Z
    .locals 0

    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/SpringForce;->isAtEquilibrium(FF)Z

    move-result p0

    return p0
.end method

.method public setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;
    .locals 0

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public skipToEnd()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 3

    invoke-direct {p0}, Lmiuix/animation/physics/SpringAnimation;->sanityCheck()V

    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/physics/SpringForce;->setValueThreshold(D)V

    invoke-super {p0}, Lmiuix/animation/physics/DynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v6, v1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    iput-boolean v3, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return v2

    :cond_1
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v7, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    :goto_0
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lmiuix/animation/physics/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method
