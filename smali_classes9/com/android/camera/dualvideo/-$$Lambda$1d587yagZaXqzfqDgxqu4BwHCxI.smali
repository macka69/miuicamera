.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->animTopBlackCover()V

    return-void
.end method
