.class public Lcom/android/zxing/DocumentDecoder$DocumentBean;
.super Ljava/lang/Object;
.source "DocumentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/DocumentDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentBean"
.end annotation


# instance fields
.field private docValue:Ljava/lang/String;

.field private image:Lcom/android/zxing/PreviewImage;

.field private points:[F


# direct methods
.method public constructor <init>(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    iput-object p2, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    iput-object p3, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-object p0
.end method

.method public getImage()Lcom/android/zxing/PreviewImage;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    return-object p0
.end method

.method public getPoints()[F
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    return-object p0
.end method

.method public setDocValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    return-void
.end method

.method public setPoints([F)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    return-void
.end method
