.class public interface abstract Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;
.super Ljava/lang/Object;
.source "ReEnrollmentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/ReEnrollmentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReEnrollmentActionListener"
.end annotation


# virtual methods
.method public abstract onAudioQualityChecked(Ljava/lang/String;Z)V
.end method

.method public abstract onEngineVersionChecked(Ljava/lang/String;)V
.end method

.method public abstract onFinished(ZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
