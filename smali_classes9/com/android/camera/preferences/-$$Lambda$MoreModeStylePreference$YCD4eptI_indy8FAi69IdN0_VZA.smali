.class public final synthetic Lcom/android/camera/preferences/-$$Lambda$MoreModeStylePreference$YCD4eptI_indy8FAi69IdN0_VZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/preferences/-$$Lambda$MoreModeStylePreference$YCD4eptI_indy8FAi69IdN0_VZA;->f$0:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/preferences/-$$Lambda$MoreModeStylePreference$YCD4eptI_indy8FAi69IdN0_VZA;->f$0:Landroid/widget/VideoView;

    invoke-static {p0}, Lcom/android/camera/preferences/MoreModeStylePreference;->lambda$stopVideoView$0(Landroid/widget/VideoView;)V

    return-void
.end method
