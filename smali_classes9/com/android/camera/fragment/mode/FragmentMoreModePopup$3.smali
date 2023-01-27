.class Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "FragmentMoreModePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->onPromptShrink(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

.field final synthetic val$finishCb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;->val$finishCb:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$3;->val$finishCb:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
