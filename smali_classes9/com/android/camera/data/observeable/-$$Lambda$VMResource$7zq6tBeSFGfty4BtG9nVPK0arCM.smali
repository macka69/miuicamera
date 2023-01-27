.class public final synthetic Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;

    invoke-direct {v0}, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;-><init>()V

    sput-object v0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;->INSTANCE:Lcom/android/camera/data/observeable/-$$Lambda$VMResource$7zq6tBeSFGfty4BtG9nVPK0arCM;

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

    check-cast p1, Lcom/android/camera/resource/BaseResourceItem;

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMResource;->lambda$startAndGetDownloadDisposable$1(Lcom/android/camera/resource/BaseResourceItem;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
