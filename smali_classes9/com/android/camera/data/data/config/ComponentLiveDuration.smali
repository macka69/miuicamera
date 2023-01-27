.class public Lcom/android/camera/data/data/config/ComponentLiveDuration;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentLiveDuration.java"


# static fields
.field public static final LIVE_DURATION_15S:Ljava/lang/String; = "15000"

.field public static final LIVE_DURATION_30S:Ljava/lang/String; = "30000"

.field public static final LIVE_DURATION_60S:Ljava/lang/String; = "60000"

.field public static final LIVE_DURATION_90S:Ljava/lang/String; = "90000"

.field private static final TAG:Ljava/lang/String; = "ComponentLiveDuration"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/extra/DataItemLive;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object p0

    const/4 v2, 0x1

    aget p0, p0, v2

    const v2, 0x7f11066d

    const-string v3, "15000"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLiveDuration15sRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080241
        0x7f080241
    .end array-data
.end method

.method private getLiveDuration30sRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080243
        0x7f080243
    .end array-data
.end method

.method private getLiveDuration60sRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080245
        0x7f080245
    .end array-data
.end method

.method private getLiveDuration90sRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080247
        0x7f080247
    .end array-data
.end method

.method private initItems(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    const v5, 0x7f11066d

    const-string v6, "15000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object v3

    aget v3, v3, v4

    const-string v6, "30000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object v3

    aget v3, v3, v4

    const-string v6, "60000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object p0

    aget p0, p0, v4

    const-string v2, "90000"

    invoke-direct {v0, v1, p0, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "15000"

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPromptInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const p0, 0x7f0f001a

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "15000"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f11078c

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_mi_live_duration"

    return-object p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "15000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_0
    const-string v0, "30000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_1
    const-string v0, "60000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_2
    const-string v0, "90000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "15000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f080242

    return p0

    :cond_0
    const-string p1, "30000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f080244

    return p0

    :cond_1
    const-string p1, "60000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p0, 0x7f080246

    return p0

    :cond_2
    const-string p1, "90000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f080248

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public reInit(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->initItems(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method
