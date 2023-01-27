.class public final synthetic Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$9zoZxxxgJDLrrnCs8rP1oQUsvn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$9zoZxxxgJDLrrnCs8rP1oQUsvn8;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$9zoZxxxgJDLrrnCs8rP1oQUsvn8;->f$0:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->lambda$updateSmartGuide$5(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
