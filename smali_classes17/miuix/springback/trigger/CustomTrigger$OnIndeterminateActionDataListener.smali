.class public interface abstract Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;
.super Ljava/lang/Object;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIndeterminateActionDataListener"
.end annotation


# virtual methods
.method public abstract onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
.end method

.method public abstract onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
.end method

.method public abstract onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
.end method

.method public abstract onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
.end method

.method public abstract onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
.end method
