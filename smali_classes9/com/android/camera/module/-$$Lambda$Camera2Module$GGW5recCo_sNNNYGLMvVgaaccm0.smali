.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$0:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$GGW5recCo_sNNNYGLMvVgaaccm0;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/Camera2Module;->lambda$showDocumentPreview$15$Camera2Module(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
