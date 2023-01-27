.class public final synthetic Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;-><init>()V

    sput-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;

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

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$resetMeter$18(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method
