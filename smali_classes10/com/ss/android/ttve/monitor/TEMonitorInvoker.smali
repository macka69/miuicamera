.class public Lcom/ss/android/ttve/monitor/TEMonitorInvoker;
.super Ljava/lang/Object;
.source "TEMonitorInvoker.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native nativeGetMap(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeMonitorPerf(I)V
.end method

.method public static native nativeMonitorPerfWithType(I)V
.end method

.method public static native nativePerfDouble(ILjava/lang/String;D)V
.end method

.method public static native nativePerfDouble(Ljava/lang/String;D)V
.end method

.method public static native nativePerfLong(ILjava/lang/String;J)V
.end method

.method public static native nativePerfLong(Ljava/lang/String;J)V
.end method

.method public static native nativePerfRational(Ljava/lang/String;FF)V
.end method

.method public static native nativePerfString(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativePerfString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeReset()V
.end method

.method public static native nativeReset(I)V
.end method

.method public static onNativeCallback_onMonitorLogFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;F)Z

    return-void
.end method

.method public static onNativeCallback_onMonitorLogInt(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method public static onNativeCallback_onMonitorLogJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELogJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onNativeCallback_onMonitorLogMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method
