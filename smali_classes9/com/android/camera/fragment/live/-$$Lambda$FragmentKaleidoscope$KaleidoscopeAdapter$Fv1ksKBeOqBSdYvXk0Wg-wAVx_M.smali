.class public final synthetic Lcom/android/camera/fragment/live/-$$Lambda$FragmentKaleidoscope$KaleidoscopeAdapter$Fv1ksKBeOqBSdYvXk0Wg-wAVx_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

.field public final synthetic f$1:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/live/-$$Lambda$FragmentKaleidoscope$KaleidoscopeAdapter$Fv1ksKBeOqBSdYvXk0Wg-wAVx_M;->f$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/live/-$$Lambda$FragmentKaleidoscope$KaleidoscopeAdapter$Fv1ksKBeOqBSdYvXk0Wg-wAVx_M;->f$1:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/live/-$$Lambda$FragmentKaleidoscope$KaleidoscopeAdapter$Fv1ksKBeOqBSdYvXk0Wg-wAVx_M;->f$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    iget-object p0, p0, Lcom/android/camera/fragment/live/-$$Lambda$FragmentKaleidoscope$KaleidoscopeAdapter$Fv1ksKBeOqBSdYvXk0Wg-wAVx_M;->f$1:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->lambda$onBindViewHolder$0$FragmentKaleidoscope$KaleidoscopeAdapter(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;)V

    return-void
.end method
