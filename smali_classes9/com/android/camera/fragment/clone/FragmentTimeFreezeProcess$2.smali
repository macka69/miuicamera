.class Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$2;
.super Ljava/lang/Object;
.source "FragmentTimeFreezeProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->lambda$updateCaptureMessage$1(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$2;->this$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideCaptureMessage()V

    return-void
.end method
