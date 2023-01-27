.class public Lcom/android/camera/aiwatermark/data/WatermarkItem;
.super Ljava/lang/Object;
.source "WatermarkItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkItem"

.field private static final mLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ALTITUDE:Ljava/lang/String;

.field private final TIMER:Ljava/lang/String;

.field private final TIMER_INTERVAL:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureCoordinate:[I

.field private mCoordinate:[I

.field private mCountry:I

.field private mHasAltitude:Z

.field private mHasMove:Z

.field private mKey:Ljava/lang/String;

.field private mLimitArea:Landroid/graphics/Rect;

.field private mLocation:I

.field private mLocationDataRunnable:Ljava/lang/Runnable;

.field private mQueueCoordinate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResId:I

.field private mResRvItem:I

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "timer"

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER_INTERVAL:J

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    const-string v1, "altitude"

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->ALTITUDE:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    new-instance v0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;-><init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    iput v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    iput v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    const/4 v0, 0x4

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "timer"

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TIMER_INTERVAL:J

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    const-string v1, "altitude"

    iput-object v1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->ALTITUDE:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    new-instance v0, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem$1;-><init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    iput-object p3, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    iput p4, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    iput p5, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    iput p6, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    iput p7, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getDataFromGeocoder(Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findAltitude(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result p0

    const-string v0, "altitude"

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getDataFromGeocoder(Landroid/location/Location;Landroid/location/Geocoder;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Landroid/location/Geocoder;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "[getDataFromGeocoder] start"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/16 v8, 0xa

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    move v2, p2

    :goto_0
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAddress] ex = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const-string p1, "[getDataFromGeocoder] end"

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getHourFormat(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "HH"

    return-object p0

    :cond_0
    const-string p0, "hh"

    return-object p0
.end method

.method private getLocationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p2

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-ltz p3, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-ltz p3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_5

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    add-int/2addr p3, p4

    goto :goto_1

    :cond_5
    return-object p0

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_7
    :goto_3
    return-object p0
.end method


# virtual methods
.method public clearCaptureCoordinate()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCaptureCoordinate()[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    return-object p0
.end method

.method public getCoordinate()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-object p0
.end method

.method public getCountry()I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLimitArea()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLocation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return p0
.end method

.method public getLocationList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getResId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return p0
.end method

.method public getResRvItem()I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeWatermarkString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getTimeWatermarkType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MM-dd"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "HH:mm"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeWatermarkType()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v0, "super_moon_text_4"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return p0
.end method

.method public getWatermarkText(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "super_moon_text_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "super_moon_text_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "longitude_latitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "location_time_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "location_time_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    const-string v5, ":mm"

    const-string v6, "-"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->findAltitude(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->setHasAltitude(Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v3, [Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "m"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v3

    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    const-string/jumbo p2, "\u00b0E"

    goto :goto_3

    :cond_2
    const-string/jumbo p2, "\u00b0W"

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v7

    const-string v0, "%.3f"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v7

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    cmpl-double v1, p1, v2

    if-lez v1, :cond_3

    const-string/jumbo v1, "\u00b0N"

    goto :goto_4

    :cond_3
    const-string/jumbo v1, "\u00b0S"

    :goto_4
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    goto/16 :goto_7

    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v1, v7, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yyyy.MM.dd "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getHourFormat(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    goto :goto_5

    :pswitch_2
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dd-MM.dd "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getHourFormat(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, p2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v7

    aput-object p2, v0, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    aput-object p2, v0, v4

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    :goto_5
    move-object p0, v0

    goto :goto_7

    :pswitch_3
    new-array p2, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->initLocationList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4, v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationText(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v7

    move-object p0, p2

    goto :goto_7

    :pswitch_4
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "dd-MMM"

    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_5
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "HH:mm-MMM dd\'th\'.yyyy"

    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :pswitch_6
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "MMM-dd-hh:mm a"

    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_4
    :goto_6
    const/4 p0, 0x0

    :goto_7
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3652cd -> :sswitch_6
        0x2411709 -> :sswitch_5
        0x241170a -> :sswitch_4
        0x708f48fc -> :sswitch_3
        0x714f9fb5 -> :sswitch_2
        0x7c8cb5d9 -> :sswitch_1
        0x7c8cb5dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasAltitude()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    return p0
.end method

.method public hasMove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return p0
.end method

.method public initLocationList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string/jumbo v3, "timer"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x2bf20

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    sget-object v2, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const-string v0, "In 3 min do not fresh the location list"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->commit()Z

    sget-object v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationDataRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    sget-object p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isTextWatermark()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "super_moon_text_4"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v1, "location_time_2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    const-string v0, "longitude_latitude"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setCaptureCoordinate([I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mQueueCoordinate:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCaptureCoordinate:[I

    return-void
.end method

.method public setCountry(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCountry:I

    return-void
.end method

.method public setHasAltitude(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasAltitude:Z

    return-void
.end method

.method public setHasMove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mHasMove:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLimitArea(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLimitArea:Landroid/graphics/Rect;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mLocation:I

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResId:I

    return-void
.end method

.method public setResRvItem(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mResRvItem:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkItem: key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; text is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; res id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; country is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCountry()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCoordinate([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mCoordinate:[I

    return-void
.end method

.method public updateImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateTextBitmap(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->TAG:Ljava/lang/String;

    const-string p1, "[updateTimeBitmap] cacheBitmap is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateTextBitmap(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->updateTextBitmap(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/data/WatermarkItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
