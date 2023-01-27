.class public Lmiuix/smooth/SmoothPathProvider$SmoothData;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothData"
.end annotation


# instance fields
.field public bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

.field public bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

.field public height:F

.field public ksi:F

.field public smooth:D

.field public topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

.field public topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

.field public width:F


# direct methods
.method public constructor <init>(FFDF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iput p2, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iput-wide p3, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iput p5, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    return-void
.end method
