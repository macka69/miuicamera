.class public Lcom/faceunity/wrapper/faceunity;
.super Ljava/lang/Object;
.source "faceunity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/wrapper/faceunity$RotatedImage;,
        Lcom/faceunity/wrapper/faceunity$SplitViewInfo;,
        Lcom/faceunity/wrapper/faceunity$AvatarInfo;,
        Lcom/faceunity/wrapper/faceunity$OnItemTriggerListener;,
        Lcom/faceunity/wrapper/faceunity$OnHandGestureListener;,
        Lcom/faceunity/wrapper/faceunity$LoadConfig;
    }
.end annotation


# static fields
.field public static final FUAITYPE_BACKGROUNDSEGMENTATION:I = 0x2

.field public static final FUAITYPE_BACKGROUNDSEGMENTATION_GREEN:I = 0x200

.field public static final FUAITYPE_FACELANDMARKS209:I = 0x40

.field public static final FUAITYPE_FACELANDMARKS239:I = 0x80

.field public static final FUAITYPE_FACELANDMARKS75:I = 0x20

.field public static final FUAITYPE_FACEPROCESSOR:I = 0x400

.field public static final FUAITYPE_FACEPROCESSOR_EXPRESSION_RECOGNIZER:I = 0x8000

.field public static final FUAITYPE_FACEPROCESSOR_FACECAPTURE:I = 0x800

.field public static final FUAITYPE_FACEPROCESSOR_FACECAPTURE_TONGUETRACKING:I = 0x1000

.field public static final FUAITYPE_FACEPROCESSOR_HAIRSEGMENTATION:I = 0x2000

.field public static final FUAITYPE_FACEPROCESSOR_HEADSEGMENTATION:I = 0x4000

.field public static final FUAITYPE_HAIRSEGMENTATION:I = 0x4

.field public static final FUAITYPE_HANDGESTURE:I = 0x8

.field public static final FUAITYPE_HUMANPOSE2D:I = 0x100

.field public static final FUAITYPE_HUMAN_PROCESSOR:I = 0x10000

.field public static final FUAITYPE_HUMAN_PROCESSOR_2D_DANCE:I = 0x80000

.field public static final FUAITYPE_HUMAN_PROCESSOR_2D_SELFIE:I = 0x40000

.field public static final FUAITYPE_HUMAN_PROCESSOR_2D_SLIM:I = 0x100000

.field public static final FUAITYPE_HUMAN_PROCESSOR_3D_DANCE:I = 0x400000

.field public static final FUAITYPE_HUMAN_PROCESSOR_3D_SELFIE:I = 0x200000

.field public static final FUAITYPE_HUMAN_PROCESSOR_DETECT:I = 0x20000

.field public static final FUAITYPE_HUMAN_PROCESSOR_SEGMENTATION:I = 0x800000

.field public static final FUAITYPE_TONGUETRACKING:I = 0x10

.field public static final FU_ADM_FLAG_ENABLE_READBACK:I = 0x2

.field public static final FU_ADM_FLAG_EXTERNAL_OES_TEXTURE:I = 0x1

.field public static final FU_ADM_FLAG_FLIP_X:I = 0x20

.field public static final FU_ADM_FLAG_FLIP_Y:I = 0x40

.field public static final FU_ADM_FLAG_I420_BUFFER:I = 0x10

.field public static final FU_ADM_FLAG_I420_TEXTURE:I = 0x8

.field public static final FU_ADM_FLAG_NV21_TEXTURE:I = 0x4

.field public static final FU_ADM_FLAG_RGBA_BUFFER:I = 0x80

.field public static final FU_ADM_FLAG_TEXTURE_AND_READBACK_BUFFER_OPPOSITE_X:I = 0x100

.field public static final FU_ADM_FLAG_TEXTURE_AND_READBACK_BUFFER_OPPOSITE_Y:I = 0x200

.field public static final FU_ADM_FLAG_TEXTURE_AND_READBACK_BUFFER_ROTATE_180:I = 0x800

.field public static final FU_ADM_FLAG_TEXTURE_AND_READBACK_BUFFER_ROTATE_270:I = 0x1000

.field public static final FU_ADM_FLAG_TEXTURE_AND_READBACK_BUFFER_ROTATE_90:I = 0x400

.field public static final FU_ADM_FLAG_TEXTURE_ROTATE_180:I = 0x4000

.field public static final FU_ADM_FLAG_TEXTURE_ROTATE_270:I = 0x8000

.field public static final FU_ADM_FLAG_TEXTURE_ROTATE_90:I = 0x2000

.field public static final FU_FORMAT_GL_CURRENT_FRAMEBUFFER:I = 0x3

.field public static final FU_FORMAT_I420_BUFFER:I = 0xd

.field public static final FU_FORMAT_NV12_BUFFER:I = 0x8

.field public static final FU_FORMAT_NV21_BUFFER:I = 0x2

.field public static final FU_FORMAT_RGBA_BUFFER:I = 0x4

.field public static final FU_FORMAT_RGBA_TEXTURE:I = 0x1

.field public static final FU_NOCLEAR_CURRENT_FRAMEBUFFER:I = 0x10000

.field public static final FU_ROTATION_MODE_0:I = 0x0

.field public static final FU_ROTATION_MODE_180:I = 0x2

.field public static final FU_ROTATION_MODE_270:I = 0x3

.field public static final FU_ROTATION_MODE_90:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/faceunity/wrapper/faceunity$LoadConfig;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fuai"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "CNamaSDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fuAuthCountWithAPIName(Ljava/lang/String;)I
.end method

.method public static native fuAvatarBindItems(I[I[I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuAvatarToCurrentFBO([F[F[F[F[FIIII[III)I
.end method

.method public static native fuAvatarToImage([F[F[F[FIIII[IIII[B)I
.end method

.method public static native fuAvatarToImage([F[F[F[F[FIIII[IIII[B)I
.end method

.method public static native fuAvatarToTexture([F[F[F[FIIII[II)I
.end method

.method public static native fuAvatarToTexture([F[F[F[F[FIIII[II)I
.end method

.method public static native fuAvatarToTextureWithTrans([F[F[F[F[FIIII[II)I
.end method

.method public static native fuAvatarUnbindItems(I[I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuBeautifyImage(IIIII[I)I
.end method

.method public static native fuBindItems(I[I)I
.end method

.method public static native fuCheckDebugItem([B)I
.end method

.method public static native fuCheckGLError()I
.end method

.method public static native fuClearItemTriggerListener()V
.end method

.method public static native fuClearReadbackRelated()I
.end method

.method public static native fuCreateEGLContext()V
.end method

.method public static native fuCreateItemFromPackage([B)I
.end method

.method public static native fuCreateTexForItem(ILjava/lang/String;[BII)I
.end method

.method public static native fuDeleteTexForItem(ILjava/lang/String;)I
.end method

.method public static native fuDestroyAllItems()V
.end method

.method public static native fuDestroyItem(I)V
.end method

.method public static native fuDestroyLibData()V
.end method

.method public static native fuDisableBoostWithEGLImage()V
.end method

.method public static native fuDone()V
.end method

.method public static native fuDualInputToFBO([BIIIII[II)V
.end method

.method public static native fuDualInputToTexture(JIIIII[I)I
.end method

.method public static native fuDualInputToTexture([BIIIII[I)I
.end method

.method public static native fuDualInputToTexture([BIIIII[III[B)I
.end method

.method public static native fuDualInputToTexture([BIIIII[III[BII)I
.end method

.method public static native fuDualInputToTextureMasked([BIIIII[I[I)I
.end method

.method public static native fuFaceProcessorGetResultFaceOcclusion(I)I
.end method

.method public static native fuFaceProcessorGetResultHairMask(I[F)I
.end method

.method public static native fuFaceProcessorGetResultHairMaskHeight(I)I
.end method

.method public static native fuFaceProcessorGetResultHairMaskWidth(I)I
.end method

.method public static native fuFaceProcessorGetResultHeadMask(I[F)I
.end method

.method public static native fuFaceProcessorGetResultHeadMaskHeight(I)I
.end method

.method public static native fuFaceProcessorGetResultHeadMaskWidth(I)I
.end method

.method public static native fuFaceProcessorSetMinFaceRatio(F)V
.end method

.method public static native fuGetCurrentRotationMode()I
.end method

.method public static native fuGetFaceIdentifier(I)I
.end method

.method public static native fuGetFaceInfo(ILjava/lang/String;[F)I
.end method

.method public static native fuGetFaceInfo(ILjava/lang/String;[I)I
.end method

.method public static native fuGetFaceProcessorFov()F
.end method

.method public static native fuGetLogLevel()I
.end method

.method public static native fuGetModuleCode(I)I
.end method

.method public static native fuGetSystemError()I
.end method

.method public static native fuGetSystemErrorString(I)Ljava/lang/String;
.end method

.method public static native fuGetVersion()Ljava/lang/String;
.end method

.method public static native fuHandDetectorGetResultGestureType(I)I
.end method

.method public static native fuHandDetectorGetResultHandRect(I[F)I
.end method

.method public static native fuHandDetectorGetResultHandScore(I)F
.end method

.method public static native fuHandDetectorGetResultNumHands()I
.end method

.method public static native fuHasFace()I
.end method

.method public static native fuHexagonInitWithPath(Ljava/lang/String;)V
.end method

.method public static native fuHexagonTearDown()V
.end method

.method public static native fuHumanActionMatchDistance([F[F)F
.end method

.method public static native fuHumanProcessorGetFov()F
.end method

.method public static native fuHumanProcessorGetNumResults()I
.end method

.method public static native fuHumanProcessorGetResultActionScore(I)F
.end method

.method public static native fuHumanProcessorGetResultActionType(I)I
.end method

.method public static native fuHumanProcessorGetResultHumanMask(I[F)I
.end method

.method public static native fuHumanProcessorGetResultHumanMaskHeight(I)I
.end method

.method public static native fuHumanProcessorGetResultHumanMaskWidth(I)I
.end method

.method public static native fuHumanProcessorGetResultJoint2ds(I[F)I
.end method

.method public static native fuHumanProcessorGetResultJoint3ds(I[F)I
.end method

.method public static native fuHumanProcessorGetResultModelMatrix(I[F)V
.end method

.method public static native fuHumanProcessorGetResultRect(I[F)I
.end method

.method public static native fuHumanProcessorGetResultTrackId(I)I
.end method

.method public static native fuHumanProcessorGetResultTransformArray(I[F)V
.end method

.method public static native fuHumanProcessorReset()V
.end method

.method public static native fuHumanProcessorSetBonemap([B)V
.end method

.method public static native fuHumanProcessorSetFov(F)V
.end method

.method public static native fuHumanProcessorSetMaxHumans(I)V
.end method

.method public static native fuIsAIModelLoaded(I)I
.end method

.method public static native fuIsGLPrepared([I)I
.end method

.method public static native fuIsLibraryInit()I
.end method

.method public static native fuIsTracking()I
.end method

.method public static native fuItemGetParam(ILjava/lang/String;)D
.end method

.method public static native fuItemGetParamString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native fuItemGetParamdv(ILjava/lang/String;)[D
.end method

.method public static native fuItemGetParamfv(ILjava/lang/String;)[F
.end method

.method public static native fuItemGetParamu8v(ILjava/lang/String;)[B
.end method

.method public static native fuItemSetParam(ILjava/lang/String;D)I
.end method

.method public static native fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native fuItemSetParam(ILjava/lang/String;[D)I
.end method

.method public static native fuItemSetParamu64(ILjava/lang/String;J)I
.end method

.method public static native fuItemSetParamu8v(ILjava/lang/String;[BI)I
.end method

.method public static native fuLoadAIModelFromPackage([BI)I
.end method

.method public static native fuLoadTongueModel([B)I
.end method

.method public static native fuOnCameraChange()V
.end method

.method public static native fuOnDeviceLost()V
.end method

.method public static native fuOnDeviceLostSafe()V
.end method

.method public static native fuOpenFileLog(Ljava/lang/String;II)I
.end method

.method public static native fuPrepareGLResource([I)V
.end method

.method public static native fuProfileGetNumTimers()I
.end method

.method public static native fuProfileGetTimerAverage(I)J
.end method

.method public static native fuProfileGetTimerCount(I)J
.end method

.method public static native fuProfileGetTimerMax(I)J
.end method

.method public static native fuProfileGetTimerMin(I)J
.end method

.method public static native fuProfileGetTimerName(I)Ljava/lang/String;
.end method

.method public static native fuProfileResetAllTimers()I
.end method

.method public static native fuReadPixelsRGBA2NV21(IIII[B)V
.end method

.method public static native fuReleaseAIModel(I)I
.end method

.method public static native fuReleaseEGLContext()V
.end method

.method public static native fuReleaseGLResources()V
.end method

.method public static native fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I
.end method

.method public static native fuRenderBundlesSplitView(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[ILcom/faceunity/wrapper/faceunity$SplitViewInfo;)I
.end method

.method public static native fuRenderBundlesToCurrentFBO(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[II)I
.end method

.method public static native fuRenderBundlesWithCamera([BIIIII[I)I
.end method

.method public static native fuRenderBundlesWithCamera([BIII[I)I
.end method

.method public static native fuRenderBundlesWithCamera([BIII[I[B)I
.end method

.method public static native fuRenderBundlesWithCameraToCurrentFBO([BIIIII[II)I
.end method

.method public static native fuRenderBundlesWithCameraToCurrentFBO([BIIII[II)I
.end method

.method public static native fuRenderI420ImageToTexture([BIII[I)I
.end method

.method public static native fuRenderNV21ImageToTexture([BIII[I)I
.end method

.method public static native fuRenderToI420Image(JIII[II)I
.end method

.method public static native fuRenderToI420Image([BIII[I)I
.end method

.method public static native fuRenderToI420Image([BIII[II)I
.end method

.method public static native fuRenderToI420Image([BIII[IIII[B)I
.end method

.method public static native fuRenderToI420Image([BIII[IIII[BII)I
.end method

.method public static native fuRenderToI420ImageMasked([BIII[I[I)I
.end method

.method public static native fuRenderToNV21Image(JIII[II)I
.end method

.method public static native fuRenderToNV21Image([BIII[I)I
.end method

.method public static native fuRenderToNV21Image([BIII[II)I
.end method

.method public static native fuRenderToNV21Image([BIII[IIII[B)I
.end method

.method public static native fuRenderToNV21Image([BIII[IIII[BII)I
.end method

.method public static native fuRenderToNV21ImageMasked([BIII[I[I)I
.end method

.method public static native fuRenderToRgbaImage(JIII[II)I
.end method

.method public static native fuRenderToRgbaImage([BIII[I)I
.end method

.method public static native fuRenderToRgbaImage([BIII[II)I
.end method

.method public static native fuRenderToRgbaImage([BIII[IIII[B)I
.end method

.method public static native fuRenderToRgbaImage([BIII[IIII[BII)I
.end method

.method public static native fuRenderToTexture(IIII[II)I
.end method

.method public static native fuRenderToTexture(IIII[II[BII)I
.end method

.method public static native fuRenderToTexture(IIII[II[BIIII)I
.end method

.method public static native fuRenderToYUVImage(JJJIIIIII[I)I
.end method

.method public static native fuRenderToYUVImage([B[B[BIIIIII[I)I
.end method

.method public static native fuRenderToYUVImage([B[B[BIIIIII[II)I
.end method

.method public static native fuRotateImage(Lcom/faceunity/wrapper/faceunity$RotatedImage;[BIIIIII)I
.end method

.method public static native fuSetAsyncTrackFace(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetCropFreePixel(IIII)I
.end method

.method public static native fuSetCropState(I)I
.end method

.method public static native fuSetDefaultRotationMode(I)V
.end method

.method public static native fuSetDeviceOrientation(I)V
.end method

.method public static native fuSetFaceDetParam(Ljava/lang/String;F)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetFaceProcessorDetectMode(I)I
.end method

.method public static native fuSetFaceProcessorFov(F)I
.end method

.method public static native fuSetFaceTrackParam(Ljava/lang/String;F)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetForceUseGL2(I)I
.end method

.method public static native fuSetHandGestrueListener(Lcom/faceunity/wrapper/faceunity$OnHandGestureListener;)V
.end method

.method public static native fuSetInputCameraMatrix(III)V
.end method

.method public static native fuSetItemTriggerListener(ILcom/faceunity/wrapper/faceunity$OnItemTriggerListener;)V
.end method

.method public static native fuSetLoadQuality(I)I
.end method

.method public static native fuSetLogLevel(I)I
.end method

.method public static native fuSetMaxFaces(I)I
.end method

.method public static native fuSetMultiSamples(I)I
.end method

.method public static native fuSetOutputResolution(II)V
.end method

.method public static native fuSetQualityTradeoff(F)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetReadbackSync(Z)V
.end method

.method public static native fuSetStrictTracking(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetTongueTracking(I)I
.end method

.method public static native fuSetTrackFaceAIType(I)V
.end method

.method public static native fuSetUseTexAsync(I)I
.end method

.method public static native fuSetup([B[B)I
.end method

.method public static native fuSetup([B[B[B)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native fuSetupInternalCheck([B[B)I
.end method

.method public static native fuSetupInternalCheckEx([B[B[B)I
.end method

.method public static native fuSetupLocal([B[B[B)[B
.end method

.method public static native fuTrackFace([BIII)I
.end method

.method public static native fuTrackFaceWithTongue([BIII)I
.end method

.method public static native fuUnBindItems(I[I)I
.end method

.method public static native fuUnbindAllItems(I)I
.end method
