.class public final synthetic Lcom/android/camera/-$$Lambda$OnScreenHint$6tdtSwsQeebrC0mYd1RCMtCmV5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$6tdtSwsQeebrC0mYd1RCMtCmV5I;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$6tdtSwsQeebrC0mYd1RCMtCmV5I;->f$0:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/camera/OnScreenHint;->lambda$hintTips$2(Landroid/app/Activity;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
