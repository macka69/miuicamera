.class Lcom/android/camera/ui/ObjectView$Filter;
.super Ljava/lang/Object;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ObjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Filter"
.end annotation


# static fields
.field private static final SHIFT_TIMES:I = 0x4


# instance fields
.field mCurrentValue:I

.field mHoldTimes:I

.field mHoldValue:I

.field final synthetic this$0:Lcom/android/camera/ui/ObjectView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ObjectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;-><init>(Lcom/android/camera/ui/ObjectView;)V

    return-void
.end method

.method private filter(I)I
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iput v1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    return p0
.end method


# virtual methods
.method public isBecomeStable(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;->filter(I)I

    move-result p0

    const/4 p1, 0x1

    if-nez v0, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    return-void
.end method
