.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:[F

.field public final synthetic f$3:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$2:[F

    iput-object p4, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$3:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-object v1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$2:[F

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$jYHtKQh1Bm-fnIAfXp9x0Aom2qM;->f$3:Landroid/util/Size;

    invoke-static {v0, v1, v2, p0}, Lcom/android/camera/module/Camera2Module;->lambda$showDocumentPreview$13(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V

    return-void
.end method
