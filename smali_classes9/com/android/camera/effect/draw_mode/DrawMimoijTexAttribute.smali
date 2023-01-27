.class public Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawMimoijTexAttribute.java"


# instance fields
.field public mIsSnapshot:Z

.field public mTexId:I

.field public mTextureHeight:I

.field public mTextureWidth:I

.field public mViewHeight:I

.field public mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(IIIIIZ)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
    .locals 0

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method
