.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
    }
.end annotation


# static fields
.field private static final FINAL_RESULT_TYPE:Ljava/lang/String; = "0"

.field private static final HOSTURL:Ljava/lang/String; = "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

.field private static final SOCKET_TIME_OUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "VoiceOnlineRecog"


# instance fields
.field private final SAMPLE_RATE:I

.field public final StatusContinueFrame:I

.field public final StatusFirstFrame:I

.field public final StatusLastFrame:I

.field private context:Landroid/content/Context;

.field private currentStatus:I

.field protected handler:Landroid/os/Handler;

.field private isPauseRecording:Z

.field private isPcmRecorderWorking:Z

.field private isStopRecording:Z

.field public final json:Lcom/google/gson/Gson;

.field private mCanStartRecord:Z

.field private mEdTime:Ljava/lang/String;

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

.field private mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

.field private mRecordStopSid:Ljava/lang/String;

.field private mResultEmitter:Lio/reactivex/CompletableEmitter;

.field private mResumeRecordingTime:J

.field private mSid:Ljava/lang/String;

.field private mStTime:Ljava/lang/String;

.field private mStartRecordingTime:J

.field private mType:Ljava/lang/String;

.field private recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private srtRowNum:I

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->SAMPLE_RATE:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusFirstFrame:I

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusContinueFrame:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->StatusLastFrame:I

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->json:Lcom/google/gson/Gson;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mRecordStopSid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->showSubtitleContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-object p0
.end method

.method static synthetic access$2008(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->currentStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->recognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    return-object p0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "sid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle sid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    :cond_1
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "cn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "st"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    const-string v0, "bg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStTime:Ljava/lang/String;

    const-string v0, "ed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mEdTime:Ljava/lang/String;

    const-string p0, "rt"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "ws"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, p1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cw"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "w"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContent: Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    sub-long/2addr v0, p0

    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm:ss,SSS"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT+00:00"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initWebSocket()V
    .locals 5

    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppSecret()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWebSocket:accessAppKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " accessAppSecret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wss://xiaomi-ist-api.xfyun.cn/v2/ist"

    invoke-static {v2, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/AuthUtils;->assembleRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v2, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method private synthetic lambda$getSubtitleContentAsync$0(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResultEmitter:Lio/reactivex/CompletableEmitter;

    return-void
.end method

.method private showSubtitleContent(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$3;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopPcmRecorder()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPcmRecorder "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopPcmRecorder: already stopped."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->webSocket:Lokhttp3/WebSocket;

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResultEmitter:Lio/reactivex/CompletableEmitter;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSubtitleContent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubtitleContentAsync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/subtitle/recog/-$$Lambda$VoiceOnlineRecog$g5l2-WZ005iACgR_hKSJYmB0uXg;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/recog/-$$Lambda$VoiceOnlineRecog$g5l2-WZ005iACgR_hKSJYmB0uXg;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lio/reactivex/Completable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p2

    new-instance p3, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;)V

    invoke-virtual {p2, p3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;->onResult(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$getSubtitleContentAsync$0$VoiceOnlineRecog(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->lambda$getSubtitleContentAsync$0(Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mResumeRecordingTime:J

    iget-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPauseRecordingTime:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    return-void
.end method

.method public startRecording()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mStartRecordingTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPauseRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mNeedRemoveTime:J

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->srtRowNum:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->initWebSocket()V

    new-instance v1, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    const/16 v2, 0x3e80

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecorder:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mPcmRecordListener:Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder;->startRecording(Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;)V

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mCanStartRecord:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isStopRecording:Z

    sget-object v0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecording:current subtitle type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->isPcmRecorderWorking:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopPcmRecorder()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->mRecordStopSid:Ljava/lang/String;

    return-void
.end method
