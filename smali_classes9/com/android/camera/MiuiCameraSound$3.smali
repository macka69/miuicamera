.class Lcom/android/camera/MiuiCameraSound$3;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MiuiCameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MiuiCameraSound;


# direct methods
.method constructor <init>(Lcom/android/camera/MiuiCameraSound;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound$3;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/MiuiCameraSound$3;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-static {p3}, Lcom/android/camera/MiuiCameraSound;->access$100(Lcom/android/camera/MiuiCameraSound;)I

    move-result p3

    if-ne p3, p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object p1, p0, Lcom/android/camera/MiuiCameraSound$3;->this$0:Lcom/android/camera/MiuiCameraSound;

    const/4 p3, -0x1

    invoke-static {p1, p3}, Lcom/android/camera/MiuiCameraSound;->access$102(Lcom/android/camera/MiuiCameraSound;I)I

    :cond_0
    iget-object p0, p0, Lcom/android/camera/MiuiCameraSound$3;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-static {p0}, Lcom/android/camera/MiuiCameraSound;->access$200(Lcom/android/camera/MiuiCameraSound;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to read sound for playback (status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiCameraSound"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
