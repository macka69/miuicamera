.class public final synthetic Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;->f$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;->f$0:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;->f$1:Z

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configFlash$16$ConfigChangeImpl(ZLcom/android/camera/module/BaseModule;)V

    return-void
.end method
