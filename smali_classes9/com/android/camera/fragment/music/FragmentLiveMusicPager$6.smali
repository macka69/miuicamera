.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$800(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$800(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ProgressDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$900(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
