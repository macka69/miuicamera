.class public Lcom/ss/android/ugc/effectmanager/link/LinkSelector;
.super Ljava/lang/Object;
.source "LinkSelector.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HostSelector"

.field private static final TASK_FLAG:Ljava/lang/String; = "SpeedMeasure"


# instance fields
.field private volatile isRun:Z

.field private mBestHostUrl:Ljava/lang/String;

.field private mBlackRoom:Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;

.field private mContext:Landroid/content/Context;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableLinkSelector:Z

.field private mIsLazy:Z

.field private mIsNetworkChangeMonitor:Z

.field private mOptedHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

.field private mRepeatTime:I

.field private mSpeedApi:Ljava/lang/String;

.field private mSpeedTimeOut:I


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isRun:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;-><init>(Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;)V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBlackRoom:Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsEnableLinkSelector:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsLazy:Z

    return p0
.end method

.method private lockToBlackRoom(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->hostEquals(Lcom/ss/android/ugc/effectmanager/link/model/host/Host;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBlackRoom:Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;

    invoke-virtual {p1, v1}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;->lock(Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;)V

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->updateBestHost()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNetworkChangeOpt()V
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsNetworkChangeMonitor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isLinkSelectorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;-><init>(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;)V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mReceiver:Lcom/ss/android/ugc/effectmanager/link/LinkSelector$NetworkChangeReceiver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getBestHostUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBestHostUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mContext:Landroid/content/Context;

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

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    return-object p0
.end method

.method public getRepeatTime()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mRepeatTime:I

    return p0
.end method

.method public getSpeedApi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mSpeedApi:Ljava/lang/String;

    return-object p0
.end method

.method public getSpeedTimeOut()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mSpeedTimeOut:I

    return p0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->getExceptionResult()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->getHosts()Ljava/util/List;

    move-result-object p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on sort done = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selector:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostSelector"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->updateBestHost()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isRun:Z

    :cond_1
    return-void
.end method

.method public isLazy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsLazy:Z

    return p0
.end method

.method public isLinkSelectorAvailable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsEnableLinkSelector:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNetworkAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public linkSelectorConfigure(Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;)V
    .locals 2
    .param p1    # Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->getSpeedTimeOut()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mSpeedTimeOut:I

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->getRepeatTime()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mRepeatTime:I

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->isEnableLinkSelector()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsEnableLinkSelector:Z

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->getSpeedApi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mSpeedApi:Ljava/lang/String;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->getOriginHosts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getItemName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBestHostUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->isNetworkChangeMonitor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsNetworkChangeMonitor:Z

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->isLazy()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mIsLazy:Z

    const-string p1, "HostSelector"

    const-string v0, "link selector configure"

    invoke-static {p1, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->setNetworkChangeOpt()V

    return-void
.end method

.method public onApiError(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on link api error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostSelector"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->lockToBlackRoom(Ljava/lang/String;)V

    return-void
.end method

.method public onApiSuccess(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on link api success:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HostSelector"

    invoke-static {p1, p0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startOptHosts()V
    .locals 4

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isLinkSelectorAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isRun:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HostSelector"

    const-string v1, "hosts measure start"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mHandler:Landroid/os/Handler;

    const-string v3, "SpeedMeasure"

    invoke-direct {v1, p0, v2, v3}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;-><init>(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isRun:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBestHost()V
    .locals 5

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->isLinkSelectorAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getOriginHosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getItemName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBestHostUrl:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOptedHosts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBlackRoom:Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;

    invoke-virtual {v4, v3}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoom;->checkHostAvailable(Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getOriginHosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->startOptHosts()V

    :cond_3
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getItemName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mBestHostUrl:Ljava/lang/String;

    return-void
.end method

.method public updateHosts(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->mOriginHosts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method
