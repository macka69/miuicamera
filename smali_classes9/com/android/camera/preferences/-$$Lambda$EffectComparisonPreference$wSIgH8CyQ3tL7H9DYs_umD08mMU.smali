.class public final synthetic Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/VideoView;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;->f$0:Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;->f$0:Landroid/widget/VideoView;

    iget-object p0, p0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/camera/preferences/EffectComparisonPreference;->lambda$preparedVideoView$1(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;)V

    return-void
.end method
