.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    check-cast p2, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$getZoomGroupForTrack$5(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/UserSelectData;)I

    move-result p0

    return p0
.end method
