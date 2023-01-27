.class public final synthetic Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$oileaJx4U6ZYufOTR5bBoZv1co4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$oileaJx4U6ZYufOTR5bBoZv1co4;->f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$oileaJx4U6ZYufOTR5bBoZv1co4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$oileaJx4U6ZYufOTR5bBoZv1co4;->f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$oileaJx4U6ZYufOTR5bBoZv1co4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->lambda$changeModeByNewMode$6$FragmentBottomAction(Ljava/lang/String;)V

    return-void
.end method
