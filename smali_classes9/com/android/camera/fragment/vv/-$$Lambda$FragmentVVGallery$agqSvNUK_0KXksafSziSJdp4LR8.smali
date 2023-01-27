.class public final synthetic Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;->INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$agqSvNUK_0KXksafSziSJdp4LR8;

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

    check-cast p1, Lcom/android/camera/multi/PluginInfo;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->lambda$pullNewList$3(Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
