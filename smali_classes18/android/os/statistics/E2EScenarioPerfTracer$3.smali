.class Landroid/os/statistics/E2EScenarioPerfTracer$3;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$perfShielder:Lcom/android/internal/app/IPerfShielder;

.field final synthetic val$scenarioBundle:Landroid/os/Bundle;

.field final synthetic val$tid:I

.field final synthetic val$uptimeMs:J


# direct methods
.method constructor <init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;IJ)V
    .locals 0

    iput-object p1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iput-object p2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$scenarioBundle:Landroid/os/Bundle;

    iput p3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$tid:I

    iput-wide p4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$uptimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iget-object v1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$scenarioBundle:Landroid/os/Bundle;

    iget v2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$tid:I

    iget-wide v3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$3;->val$uptimeMs:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IPerfShielder;->abortSpecificScenario(Landroid/os/Bundle;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
