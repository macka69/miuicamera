.class public final synthetic Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;

    invoke-direct {v0}, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;->INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$3D5dGA42pFH_Q7Byu0zZvUBKv9w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->lambda$loadTMMusic$3(Lcom/android/camera/resource/tmmusic/TMMusicList;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
