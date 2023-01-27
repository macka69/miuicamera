.class Lcom/android/camera/module/Camera2Module$25$1;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module$25;->onSessionStatusFlawResultData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/Camera2Module$25;

.field final synthetic val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$flawResult:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module$25;ILcom/android/camera/fragment/top/FragmentTopConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$25$1;->this$1:Lcom/android/camera/module/Camera2Module$25;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$25$1;->val$flawResult:I

    iput-object p3, p0, Lcom/android/camera/module/Camera2Module$25$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$25$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/camera/module/Camera2Module$25$1;->val$flawResult:I

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x7f110581

    goto :goto_0

    :cond_1
    const v1, 0x7f110582

    goto :goto_0

    :cond_2
    const v1, 0x7f110583

    :goto_0
    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    :cond_3
    :goto_1
    return-void
.end method
