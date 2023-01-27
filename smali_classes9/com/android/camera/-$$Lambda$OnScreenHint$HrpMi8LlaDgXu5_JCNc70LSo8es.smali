.class public final synthetic Lcom/android/camera/-$$Lambda$OnScreenHint$HrpMi8LlaDgXu5_JCNc70LSo8es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$HrpMi8LlaDgXu5_JCNc70LSo8es;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$HrpMi8LlaDgXu5_JCNc70LSo8es;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$HrpMi8LlaDgXu5_JCNc70LSo8es;->f$0:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$OnScreenHint$HrpMi8LlaDgXu5_JCNc70LSo8es;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, p0, p1}, Lcom/android/camera/OnScreenHint;->lambda$showTips$0(Landroid/app/Activity;Ljava/lang/CharSequence;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
