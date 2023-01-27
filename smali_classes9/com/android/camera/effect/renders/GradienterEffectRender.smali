.class public Lcom/android/camera/effect/renders/GradienterEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "GradienterEffectRender.java"


# static fields
.field private static final FILTER:F = 0.7f

.field private static final PREVIEW_FRAG:Ljava/lang/String; = "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform float sAngle; \nuniform vec2 vTexSize; \nuniform vec2 vTargetSize; \nuniform vec2 vTargetCenter; \nuniform float uAlpha; \nvoid main() \n{ \n  vec4 color = texture2D(sTexture, vTexCoord); \n  if (sAngle != 0.0) { \n    float pf = min(vTargetSize.s,vTargetSize.t) / max(vTargetSize.s,vTargetSize.t); \n    float mOrigin = atan(pf); \n    float rorate_angle = -sAngle; \n    float fangle = radians(abs(rorate_angle)) + mOrigin; \n    float s = sin(mOrigin) / sin(fangle);\n    s = 1.0 / s; \n    float center_x = 0.5 * vTexSize.s; \n    float center_y = 0.5 * vTexSize.t; \n    float cosangle = cos(radians(rorate_angle)); \n    float sinangle = sin(radians(rorate_angle)); \n    float x = vTexCoord.s * vTexSize.s; \n    float y = vTexCoord.t * vTexSize.t; \n    float  x1 = x - vTargetCenter.x; \n    float  y1 = y - vTargetCenter.y; \n    x = cosangle * x1 + sinangle * y1 + center_x; \n    y = -1.0 * sinangle * x1 + cosangle * y1 + center_y; \n    x = s * (x - center_x) + center_x - (vTexSize.s - vTargetSize.s) * 0.5; \n     y = s * (y - center_y) + center_y - (vTexSize.t - vTargetSize.t) * 0.5; \n     float dis = min( min(y,vTargetSize.t - y),min(x, vTargetSize.s - x)); \n    float ap = abs(dis) / s /1.0; \n    float a = sqrt(exp(-1.0 * ap * ap)); \n    float yy = float(int(y + 0.5)); \n    float xx = float(int(x + 0.5)); \n    if (yy <= 0.0 || yy >= vTargetSize.t || xx <= 0.0 || xx >= vTargetSize.s) { \n        color = mix(color * 0.4,vec4(1.0,1.0,1.0,1.0),a); \n    } else { \n        color = mix(color,vec4(1.0,1.0,1.0,1.0),a); \n    } \n    color = clamp(color,0.0,1.0); \n  } \n  gl_FragColor = color*uAlpha; \n} \n"

.field private static final SHIFT_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GradienterEffectRender"

.field private static final ZEROING_THRESHOLD:F = 0.5f


# instance fields
.field private mKeepZero:Z

.field private mLastRotation:F

.field private mShiftTimes:I

.field private mSquareModeExtraMargin:I

.field private mUniformAngle:I

.field private mUniformTargetCenter:I

.field private mUniformTargetSize:I

.field private mUniformTexSize:I

.field private mZero:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    return-void
.end method

.method private filteRotation(F)V
    .locals 3

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_2

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    goto :goto_0

    :cond_0
    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    const v1, 0x3e99999a

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    :goto_1
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filteRotation deviceRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mLastRotation="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GradienterEffectRender"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getRotation()F
    .locals 5

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/GradienterEffectRender;->filteRotation(F)V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v0, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    if-eq v2, v4, :cond_3

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    iput v3, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    :cond_4
    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    if-ne v2, v4, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    iput-boolean v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mZero:Z

    :cond_5
    :goto_1
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mZero:Z

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    return v1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform float sAngle; \nuniform vec2 vTexSize; \nuniform vec2 vTargetSize; \nuniform vec2 vTargetCenter; \nuniform float uAlpha; \nvoid main() \n{ \n  vec4 color = texture2D(sTexture, vTexCoord); \n  if (sAngle != 0.0) { \n    float pf = min(vTargetSize.s,vTargetSize.t) / max(vTargetSize.s,vTargetSize.t); \n    float mOrigin = atan(pf); \n    float rorate_angle = -sAngle; \n    float fangle = radians(abs(rorate_angle)) + mOrigin; \n    float s = sin(mOrigin) / sin(fangle);\n    s = 1.0 / s; \n    float center_x = 0.5 * vTexSize.s; \n    float center_y = 0.5 * vTexSize.t; \n    float cosangle = cos(radians(rorate_angle)); \n    float sinangle = sin(radians(rorate_angle)); \n    float x = vTexCoord.s * vTexSize.s; \n    float y = vTexCoord.t * vTexSize.t; \n    float  x1 = x - vTargetCenter.x; \n    float  y1 = y - vTargetCenter.y; \n    x = cosangle * x1 + sinangle * y1 + center_x; \n    y = -1.0 * sinangle * x1 + cosangle * y1 + center_y; \n    x = s * (x - center_x) + center_x - (vTexSize.s - vTargetSize.s) * 0.5; \n     y = s * (y - center_y) + center_y - (vTexSize.t - vTargetSize.t) * 0.5; \n     float dis = min( min(y,vTargetSize.t - y),min(x, vTargetSize.s - x)); \n    float ap = abs(dis) / s /1.0; \n    float a = sqrt(exp(-1.0 * ap * ap)); \n    float yy = float(int(y + 0.5)); \n    float xx = float(int(x + 0.5)); \n    if (yy <= 0.0 || yy >= vTargetSize.t || xx <= 0.0 || xx >= vTargetSize.s) { \n        color = mix(color * 0.4,vec4(1.0,1.0,1.0,1.0),a); \n    } else { \n        color = mix(color,vec4(1.0,1.0,1.0,1.0),a); \n    } \n    color = clamp(color,0.0,1.0); \n  } \n  gl_FragColor = color*uAlpha; \n} \n"

    return-object p0
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "sAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformAngle:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "vTexSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTexSize:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "vTargetSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "vTargetCenter"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetCenter:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07067f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mSquareModeExtraMargin:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTexSize:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    int-to-float v0, v0

    invoke-static {v2, v0, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mSquareModeExtraMargin:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    mul-int/2addr v0, v2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    div-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :goto_0
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetCenter:I

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformAngle:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/GradienterEffectRender;->getRotation()F

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
