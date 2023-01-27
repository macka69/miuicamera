.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;

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

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showLostDialog()V

    return-void
.end method
