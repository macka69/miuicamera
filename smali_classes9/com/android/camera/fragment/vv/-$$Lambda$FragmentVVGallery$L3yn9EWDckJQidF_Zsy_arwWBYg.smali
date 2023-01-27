.class public final synthetic Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;->INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVGallery$L3yn9EWDckJQidF_Zsy_arwWBYg;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->lambda$pullNewList$4(Ljava/lang/Throwable;)Lcom/android/camera/resource/BaseResourceRaw;

    move-result-object p0

    return-object p0
.end method
