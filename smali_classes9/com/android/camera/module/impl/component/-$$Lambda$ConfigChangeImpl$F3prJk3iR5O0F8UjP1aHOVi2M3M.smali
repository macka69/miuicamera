.class public final synthetic Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F3prJk3iR5O0F8UjP1aHOVi2M3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F3prJk3iR5O0F8UjP1aHOVi2M3M;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F3prJk3iR5O0F8UjP1aHOVi2M3M;->f$0:Z

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configMoon$9(ZLcom/android/camera/module/BaseModule;)V

    return-void
.end method
