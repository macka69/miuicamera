.class public final synthetic Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;->INSTANCE:Lcom/android/camera/module/loader/camera2/-$$Lambda$Camera2OpenManager$y5-NsPyoUfD8GQ4mHQ_seHdlC9g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->lambda$openCamera$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
