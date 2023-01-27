.class Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentLiveMusicCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$202(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Z)Z

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$202(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Z)Z

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/MusicFrameAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicFrameAdapter;->getTrimInOut()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object p2

    iget-wide v0, p2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    long-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {v0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$602(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;J)J

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->selectMusicPlayStartTime(Lcom/android/camera/fragment/music/LiveMusicInfo;J)V

    :cond_2
    return-void
.end method
