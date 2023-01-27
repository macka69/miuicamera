.class public Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;
.super Ljava/lang/Object;
.source "LinkSelectorConfiguration.java"


# static fields
.field public static final MS_OF_ONE_MIN:I = 0xea60

.field public static final MS_OF_ONE_SEC:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableLinkSelector:Z

.field private mIsLazy:Z

.field private mIsNetworkChangeMonitor:Z

.field private mOriginHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatTime:I

.field private mSpeedApi:Ljava/lang/String;

.field private mSpeedTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedTimeOut:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mRepeatTime:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "/ies/speed/"

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedApi:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsNetworkChangeMonitor:Z

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsLazy:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getOriginHosts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mOriginHosts:Ljava/util/List;

    return-object p0
.end method

.method public getRepeatTime()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mRepeatTime:I

    return p0
.end method

.method public getSpeedApi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedApi:Ljava/lang/String;

    return-object p0
.end method

.method public getSpeedTimeOut()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedTimeOut:I

    return p0
.end method

.method public isEnableLinkSelector()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    return p0
.end method

.method public isLazy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsLazy:Z

    return p0
.end method

.method public isNetworkChangeMonitor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsNetworkChangeMonitor:Z

    return p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setLazy(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsLazy:Z

    return-void
.end method

.method public setNetworkChangeMonitor(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mIsNetworkChangeMonitor:Z

    return-void
.end method

.method public setOriginHosts(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mOriginHosts:Ljava/util/List;

    return-void
.end method

.method public setRepeatTime(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mRepeatTime:I

    return-void
.end method

.method public setSpeedApi(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedApi:Ljava/lang/String;

    return-void
.end method

.method public setSpeedTimeOut(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mEnableLinkSelector:Z

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->mSpeedTimeOut:I

    return-void
.end method
