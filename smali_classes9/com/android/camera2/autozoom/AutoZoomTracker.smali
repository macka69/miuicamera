.class public Lcom/android/camera2/autozoom/AutoZoomTracker;
.super Ljava/lang/Object;
.source "AutoZoomTracker.java"


# instance fields
.field private id:I

.field private mBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/autozoom/AutoZoomTracker;->id:I

    iput-object p2, p0, Lcom/android/camera2/autozoom/AutoZoomTracker;->mBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomTracker;->mBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/autozoom/AutoZoomTracker;->id:I

    return p0
.end method
