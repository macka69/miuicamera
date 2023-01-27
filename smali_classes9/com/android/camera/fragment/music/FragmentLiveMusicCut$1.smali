.class Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "FragmentLiveMusicCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/MusicFrameAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/music/MusicFrameAdapter;->getRatio()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
