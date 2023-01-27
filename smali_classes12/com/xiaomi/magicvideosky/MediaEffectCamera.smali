.class public Lcom/xiaomi/magicvideosky/MediaEffectCamera;
.super Ljava/lang/Object;
.source "MediaEffectCamera.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MediaEffectCamera"


# instance fields
.field private mMediaFilterCamera:J

.field mMediaFilterCameraNotify:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

.field private mRender:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct MediaEffectCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

    return-void
.end method

.method private static native BindRenderJni(JJ)Z
.end method

.method private static native CancelRecordingJni(J)V
.end method

.method private static native ConstructMediaEffectCameraJni(Ljavax/microedition/khronos/egl/EGLContext;IIIILcom/xiaomi/magicvideosky/EffectCameraNotifier;)J
.end method

.method private static native ConstructRenderJni()J
.end method

.method private static native DestructMediaEffectCameraJni(J)V
.end method

.method private static native DestructRenderJni(J)V
.end method

.method private static native EnableSegAlgorithmsJni(JZ)V
.end method

.method private static native GetRecordingStatusJni(J)I
.end method

.method private static native InitRenderJni(JIIII)V
.end method

.method public static InitSegment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->InitSegmentJni(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native InitSegmentJni(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native NeedProcessTextureJni(JJII)V
.end method

.method private static native PauseRecordingJni(J)V
.end method

.method private static native PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIJ[F)V
.end method

.method private static native RenderFrameJni(J)V
.end method

.method private static native RenderReleaseJni(J)V
.end method

.method private static native ResumeRecordingJni(J)V
.end method

.method private static native SetCameraIdJni(JI)V
.end method

.method private static native SetCurrentGLContextJni()V
.end method

.method private static native SetEncoderTypeJni(Ljava/lang/String;)Z
.end method

.method private static native SetOrientationJni(JI)V
.end method

.method private static native SetParamsJni(J[Ljava/lang/String;)Z
.end method

.method private static native StartPreviewRecordJni(J)V
.end method

.method private static native StartRecordingJni(JLjava/lang/String;JJ)V
.end method

.method private static native StopPreviewRecordJni(J)V
.end method

.method private static native StopRecordingJni(J)V
.end method

.method public static Version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->VersionJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native VersionJni()Ljava/lang/String;
.end method


# virtual methods
.method public BindRender()Z
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "BindRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->BindRenderJni(JJ)Z

    move-result p0

    return p0
.end method

.method public CancelRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->CancelRecordingJni(J)V

    return-void
.end method

.method public ConstructMediaEffectCamera(IIIILcom/xiaomi/magicvideosky/EffectCameraNotifier;)V
    .locals 6

    iput-object p5, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

    const/4 v0, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->ConstructMediaEffectCameraJni(Ljavax/microedition/khronos/egl/EGLContext;IIIILcom/xiaomi/magicvideosky/EffectCameraNotifier;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    sget-object p1, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct MediaFilterCamera: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ConstructRender()V
    .locals 2

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct ConstructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->ConstructRenderJni()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public DestructMediaEffectCamera()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct MediaEffectCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->DestructMediaEffectCameraJni(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

    return-void
.end method

.method public DestructRender()V
    .locals 2

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct DestructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->DestructRenderJni(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public EnableSegAlgorithms(Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablefilmpicture MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->EnableSegAlgorithmsJni(JZ)V

    return-void
.end method

.method public GetRecordingStatus()Lcom/xiaomi/magicvideosky/RecordingStatus;
    .locals 2

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "GetRecordingStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->GetRecordingStatusJni(J)I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/magicvideosky/RecordingStatus;->int2enum(I)Lcom/xiaomi/magicvideosky/RecordingStatus;

    move-result-object p0

    return-object p0
.end method

.method public InitRender(IIII)V
    .locals 8

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct InitRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->InitRenderJni(JIIII)V

    return-void
.end method

.method public NeedProcessTexture(JII)V
    .locals 8

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NeedProcessTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->NeedProcessTextureJni(JJII)V

    return-void
.end method

.method public PauseRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->PauseRecordingJni(J)V

    return-void
.end method

.method public PushExtraYAndUVFrame(Landroid/media/Image;[F)V
    .locals 13

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushExtraYUVFrame MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    iget-wide v3, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    aget-object p0, v0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 p0, 0x2

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long v10, p0, v0

    move-object v12, p2

    invoke-static/range {v3 .. v12}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIJ[F)V

    return-void
.end method

.method public RenderFrame()V
    .locals 2

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct RenderFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->RenderFrameJni(J)V

    return-void
.end method

.method public RenderRelease()V
    .locals 2

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct RenderRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->RenderReleaseJni(J)V

    return-void
.end method

.method public ResumeRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->ResumeRecordingJni(J)V

    return-void
.end method

.method public SetCameraId(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCameraId MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetCameraIdJni(JI)V

    return-void
.end method

.method public SetCurrentGLContext()V
    .locals 1

    sget-object p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v0, "SetCurrentGLContext"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetCurrentGLContextJni()V

    return-void
.end method

.method public SetEncoderType(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetEncoderType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetEncoderTypeJni(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public SetOrientation(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetOrientation MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetOrientationJni(JI)V

    return-void
.end method

.method public SetParams(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Map: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "Param Map: <null, null>"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    :cond_1
    iget-wide p0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {p0, p1, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetParamsJni(J[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public StartPreviewRecord()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartPreviewRecord MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StartPreviewRecordJni(J)V

    return-void
.end method

.method public StartRecording(Ljava/lang/String;JJ)V
    .locals 9

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StartRecordingJni(JLjava/lang/String;JJ)V

    return-void
.end method

.method public StopPreviewRecord()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopPreviewRecord MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StopPreviewRecordJni(J)V

    return-void
.end method

.method public StopRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StopRecordingJni(J)V

    return-void
.end method
