.class public Lcom/xiaomi/onetrack/Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->g:Z

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->h:Z

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->l:Z

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/Configuration$Builder;)Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->i:Z

    return p0
.end method

.method static synthetic i(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->l:Z

    return p0
.end method

.method static synthetic m(Lcom/xiaomi/onetrack/Configuration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/xiaomi/onetrack/Configuration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->n:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/onetrack/Configuration;
    .locals 2

    new-instance v0, Lcom/xiaomi/onetrack/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/Configuration;-><init>(Lcom/xiaomi/onetrack/Configuration$Builder;Lcom/xiaomi/onetrack/Configuration$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    return-object p0
.end method

.method public setGAIDEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->g:Z

    return-object p0
.end method

.method public setImeiEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->i:Z

    return-object p0
.end method

.method public setImsiEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->h:Z

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setInternational(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->d:Z

    return-object p0
.end method

.method public setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object p0
.end method

.method public setOverrideMiuiRegionSetting(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->l:Z

    return-object p0
.end method

.method public setPluginId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->n:Z

    return-object p0
.end method
