.class public Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;
.super Ljava/lang/Object;
.source "ClickCheck.java"


# static fields
.field private static final CLICK_TIME:J = 0x64L

.field private static instance:Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;


# instance fields
.field private volatile isForceDisabled:Z

.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->mLastClickTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->isForceDisabled:Z

    return-void
.end method

.method public static getInstance()Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->instance:Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->instance:Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->instance:Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;

    return-object v0
.end method


# virtual methods
.method public checkClickable()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->mLastClickTime:J

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->isForceDisabled:Z

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setForceDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ClickCheck;->isForceDisabled:Z

    return-void
.end method
