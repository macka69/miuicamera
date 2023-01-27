.class public final synthetic Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;

    invoke-direct {v0}, Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;-><init>()V

    sput-object v0, Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;->INSTANCE:Lcom/android/camera/-$$Lambda$OnScreenHint$rzbY_R9WC5SykQ-hzval09H39Ts;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/OnScreenHint;->lambda$hintTips$3(Landroid/view/View;)V

    return-void
.end method
