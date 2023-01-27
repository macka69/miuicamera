.class public final synthetic Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;

    invoke-direct {v0}, Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;-><init>()V

    sput-object v0, Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;->INSTANCE:Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;

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

    check-cast p1, Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/mi/config/DataItemFeature;->lambda$isSupportDualVideo$0(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
