.class public interface abstract Lcom/xiaomi/mi_connect_sdk/api/MiApp;
.super Ljava/lang/Object;
.source "MiApp.java"


# virtual methods
.method public abstract acceptConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
.end method

.method public abstract deviceInfoIDM()[B
.end method

.method public abstract disconnectFromEndPoint(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
.end method

.method public abstract getIdHash()[B
.end method

.method public abstract registerSoundBoxWhiteName(Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;)I
.end method

.method public abstract rejectConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
.end method

.method public abstract requestConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
.end method

.method public abstract sendPayload(Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;)V
.end method

.method public abstract startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
.end method

.method public abstract startAp(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/mi_connect_service/IApStateCallback;)J
.end method

.method public abstract startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
.end method

.method public abstract startScannerList(Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback;Ljava/lang/String;)I
.end method

.method public abstract stopAdvertising()V
.end method

.method public abstract stopAp(J)V
.end method

.method public abstract stopDiscovery()V
.end method

.method public abstract updateCommConfig(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)I
.end method
