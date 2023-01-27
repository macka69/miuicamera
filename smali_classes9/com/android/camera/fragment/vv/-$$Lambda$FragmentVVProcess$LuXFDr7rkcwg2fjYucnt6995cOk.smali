.class public final synthetic Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;->INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVProcess$LuXFDr7rkcwg2fjYucnt6995cOk;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->lambda$updateThumbnail$1(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
