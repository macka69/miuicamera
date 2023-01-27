.class Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    iput-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$100(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamRecorderControl;->stopPlayWhenSave()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;->val$savePath:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->combineVideoAudio(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
