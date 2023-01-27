.class public Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;
.super Lcom/android/camera/data/observeable/VMBase;
.source "MimojiViewModel.java"


# instance fields
.field private mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

.field private mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    return-void
.end method

.method private synthetic lambda$getCartoonListObservable$1(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method

.method private synthetic lambda$getHumanListObservable$0(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method


# virtual methods
.method protected achieveEndOfCycle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCartoonListObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    const-string v2, "cartoon.json"

    const-string v3, "mimoji_cartoon_version"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$UfITykowah6IdPXjIHCkncY7r7s;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$UfITykowah6IdPXjIHCkncY7r7s;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getHumanListObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    const-string v2, "human.json"

    const-string v3, "mimoji_human_version"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$1o9MnwJqaW2531_t0PKqAEAvMgM;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$1o9MnwJqaW2531_t0PKqAEAvMgM;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getMimojiCartoonList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p0
.end method

.method public getMimojiHumanList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p0
.end method

.method public synthetic lambda$getCartoonListObservable$1$MimojiViewModel(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->lambda$getCartoonListObservable$1(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method

.method public synthetic lambda$getHumanListObservable$0$MimojiViewModel(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->lambda$getHumanListObservable$0(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object p1
.end method

.method protected rollbackData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mHumanListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->mCartoonListList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-void
.end method
