.class public final synthetic Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;->f$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-boolean p2, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;->f$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$reInitAlert$7$FragmentTopConfig(Z)V

    return-void
.end method
