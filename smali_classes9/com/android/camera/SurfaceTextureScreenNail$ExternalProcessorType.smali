.class public Lcom/android/camera/SurfaceTextureScreenNail$ExternalProcessorType;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SurfaceTextureScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalProcessorType"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DUAL_VIDEO:I = 0x1

.field public static final NEED_BLUR:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/camera/SurfaceTextureScreenNail;


# direct methods
.method public constructor <init>(Lcom/android/camera/SurfaceTextureScreenNail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail$ExternalProcessorType;->this$0:Lcom/android/camera/SurfaceTextureScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
