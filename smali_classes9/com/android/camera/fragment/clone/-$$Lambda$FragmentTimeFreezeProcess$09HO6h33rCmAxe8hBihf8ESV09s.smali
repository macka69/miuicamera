.class public final synthetic Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iput p2, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$1:I

    iput-boolean p3, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$0:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iget v1, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$1:I

    iget-boolean p0, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->lambda$updateCaptureMessage$1$FragmentTimeFreezeProcess(IZ)V

    return-void
.end method
