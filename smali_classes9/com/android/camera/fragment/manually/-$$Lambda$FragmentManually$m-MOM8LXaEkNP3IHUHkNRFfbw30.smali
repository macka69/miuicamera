.class public final synthetic Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;->INSTANCE:Lcom/android/camera/fragment/manually/-$$Lambda$FragmentManually$m-MOM8LXaEkNP3IHUHkNRFfbw30;

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

    check-cast p1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/FragmentManually;->lambda$onManuallyDataChanged$2(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    return-void
.end method
