.class public final synthetic Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$JOe_ose5ZuNK6O8rlb3i_3gAM1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$JOe_ose5ZuNK6O8rlb3i_3gAM1o;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$JOe_ose5ZuNK6O8rlb3i_3gAM1o;->f$0:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/timerburst/TimerBurstController;->lambda$currentSeekBarValue$0(Landroid/view/View;)V

    return-void
.end method
