.class public Lcom/faceunity/pta_helper/gif/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final delayMs:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifImage;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/faceunity/pta_helper/gif/GifImage;->delayMs:I

    return-void
.end method
