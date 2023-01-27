.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;[BLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$1:[B

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$1:[B

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-V3hcNnvx1s1Rf-4q3ElXk5YOZM;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$onDrawFrame$5$MimojiFuControlImpl([BLandroid/graphics/Rect;)V

    return-void
.end method
