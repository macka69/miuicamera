.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.super Ljava/lang/Object;
.source "IPCParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessageOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEventOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEventOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponse;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionRequest;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionRequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChangedOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallbackOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResultOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnConnectServiceRequest;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnConnectServiceRequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChangedOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResultOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInvitationAccepted;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInvitationAcceptedOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnectionOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatusOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEventOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceLost;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceLostOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFoundOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitationOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitationOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnectionOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$Event;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$EventOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ResponseOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDMOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDMOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterProc;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterProcOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnectionOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnectionOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectServiceOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallbackOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryIDM;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryIDMOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RequestOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServerOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClientOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParamOrBuilder;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;,
        Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParamOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
