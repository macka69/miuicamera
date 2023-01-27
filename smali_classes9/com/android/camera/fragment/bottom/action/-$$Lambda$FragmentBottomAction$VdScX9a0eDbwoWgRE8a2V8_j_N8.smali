.class public final synthetic Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$VdScX9a0eDbwoWgRE8a2V8_j_N8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$VdScX9a0eDbwoWgRE8a2V8_j_N8;->f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$VdScX9a0eDbwoWgRE8a2V8_j_N8;->f$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->lambda$notifyDataChanged$7$FragmentBottomAction()V

    return-void
.end method
