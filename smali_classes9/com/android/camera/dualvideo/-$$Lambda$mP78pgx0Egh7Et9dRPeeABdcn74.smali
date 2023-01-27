.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->animBlackCover()V

    return-void
.end method
