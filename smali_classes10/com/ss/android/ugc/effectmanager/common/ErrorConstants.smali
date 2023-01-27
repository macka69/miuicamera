.class public Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;
.super Ljava/lang/Object;
.source "ErrorConstants.java"


# static fields
.field public static final APP_NEED_UPGRADE:I = 0x7d6

.field public static final CODE_CANCEL_DOWNLOAD:I = 0x2711

.field public static final CODE_DOWNLOAD_ERROR:I = 0x2712

.field public static final CODE_EFFECT_NULL:I = 0x2713

.field public static final CODE_INVALID_EFFECT_CACHE:I = 0x2714

.field public static final CODE_INVALID_EFFECT_ID:I = 0x271e

.field public static final CODE_IO_FAIL:I = 0x271c

.field public static final CODE_JSON_CONVERT_ERROR:I = 0x2718

.field public static final CODE_MD5_ERROR:I = 0x271a

.field public static final CODE_NO_DOWNLOADED_EFFECTS:I = 0x2716

.field public static final CODE_NO_LOCAL_TAG:I = 0x2719

.field public static final CODE_NO_NETWORK:I = 0x271b

.field public static final CODE_PANEL_NULL:I = 0x2717

.field public static final CODE_SDK_ERROR:I = 0x2715

.field public static final CODE_UNKNOW:I = 0x1

.field public static final CODE_UNZIP_FAIL:I = 0x271d

.field public static final CODE_URL_NOT_EXIST:I = 0x271f

.field public static final EFFECT_NOT_FOUND:I = 0x7d4

.field public static final EFFECT_NOT_IN_WHITE_LIST:I = 0x7d5

.field public static final EFFECT_NOT_SUPPORT:I = 0x7d3

.field public static final EFFECT_UNAVAILABLE:I = 0x7d2

.field public static final EXCEPTION_CANCEL_DOWNLOAD:Ljava/lang/String; = "Cancel download"

.field public static final EXCEPTION_DOWNLOAD_ERROR:Ljava/lang/String; = "Download error"

.field public static final EXCEPTION_DOWNLOAD_URL_ERROR:Ljava/lang/String; = "File url is empty"

.field public static final EXCEPTION_EFFECT_NULL:Ljava/lang/String; = "Sticker is null"

.field public static final EXCEPTION_INVALID_EFFECT_CACHE:Ljava/lang/String; = "Invalid effect list cache !!!"

.field public static final EXCEPTION_JSON_CONVERT:Ljava/lang/String; = "Json convert fail"

.field public static final EXCEPTION_MD5_ERROR:Ljava/lang/String; = "MD5 error"

.field public static final EXCEPTION_NO_DOWNLOADED_EFFECTS:Ljava/lang/String; = "No Downloaded Effects"

.field public static final EXCEPTION_NO_NETWORK:Ljava/lang/String; = "network unavailable"

.field public static final EXCEPTION_PANEL_NULL:Ljava/lang/String; = "panel is null"

.field public static final EXCEPTION_SDK_ERROR:Ljava/lang/String; = "SDK error"

.field public static final LOG_CACHE_DIR_NOT_SET:Ljava/lang/String; = "Cache directory error"

.field public static final LOG_CONFIGURATION_NOT_SET:Ljava/lang/String; = "Not set configuration"

.field public static final LOG_CONTEXT_NOT_SET:Ljava/lang/String; = "Not set net context"

.field public static final LOG_HOST_NOT_SET:Ljava/lang/String; = "Not set host !!!"

.field public static final LOG_JSON_CONCERT_NOT_SET:Ljava/lang/String; = "Not set json convert"

.field public static final LOG_NET_WORKER_NOT_SET:Ljava/lang/String; = "Not set net worker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static APIErrorHandle(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    if-eq p0, v0, :cond_3

    const/16 v0, 0x271e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x44d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "io \u9519\u8bef"

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "\u65e0\u7f51\u7edc"

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "MD5 error"

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "\u6ca1\u6709\u672c\u5730 TAG \u7f13\u5b58"

    goto :goto_0

    :pswitch_4
    const-string v1, "panel is null"

    goto :goto_0

    :pswitch_5
    const-string v1, "No Downloaded Effects"

    goto :goto_0

    :pswitch_6
    const-string v1, "SDK error"

    goto :goto_0

    :pswitch_7
    const-string v1, "Invalid effect list cache !!!"

    goto :goto_0

    :pswitch_8
    const-string v1, "Sticker is null"

    goto :goto_0

    :pswitch_9
    const-string v1, "Download error"

    goto :goto_0

    :pswitch_a
    const-string v1, "Cancel download"

    goto :goto_0

    :pswitch_b
    const-string v1, "\u9700\u8981\u66f4\u65b0app"

    goto :goto_0

    :pswitch_c
    const-string v1, "\u4e0d\u5728\u767d\u540d\u5355"

    goto :goto_0

    :pswitch_d
    const-string v1, "\u5f53\u524d\u7279\u6548id\u4e0d\u5b58\u5728"

    goto :goto_0

    :pswitch_e
    const-string v1, "\u4e0d\u652f\u6301\u5f53\u524d\u8bbe\u5907"

    goto :goto_0

    :pswitch_f
    const-string v1, "Effect\u5df2\u4e0b\u7ebf"

    goto :goto_0

    :pswitch_10
    const-string v1, "\u5185\u5bb9\u6ca1\u6709\u53d1\u751f\u53d8\u5316"

    goto :goto_0

    :pswitch_11
    const-string v1, "app_channel\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_12
    const-string v1, "channel\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_13
    const-string v1, "device_type\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_14
    const-string v1, "device_platform\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_15
    const-string v1, "device_id\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_16
    const-string v1, "sdk_version\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_17
    const-string v1, "app_version\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_18
    const-string v1, "access_key\u4e0d\u5408\u6cd5"

    goto :goto_0

    :pswitch_19
    const-string v1, "\u53c2\u6570\u4e0d\u5408\u6cd5\uff08\u53c2\u6570\u7f3a\u5931\u6216\u8005\u9519\u8bef\uff09"

    goto :goto_0

    :cond_0
    const-string v1, "access_key\u4e0d\u5b58\u5728"

    goto :goto_0

    :cond_1
    const-string v1, "\u5f53\u524d\u5e94\u7528\u4e0d\u662f\u6d4b\u8bd5\u5e94\u7528"

    goto :goto_0

    :cond_2
    const-string v1, "\u65e0\u6548\u7684effect id"

    :cond_3
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2719
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
