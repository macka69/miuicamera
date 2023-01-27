.class public Lcom/mi/config/FeatureParserWrapper;
.super Ljava/lang/Object;
.source "FeatureParserWrapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final APP_WATER_MARK:Ljava/lang/String; = "is_camera_app_water_mark"

.field public static final BURST_COUNT:Ljava/lang/String; = "burst_shoot_count"

.field public static final EDGE_TOUCH:Ljava/lang/String; = "support_edge_handgrip"

.field public static final ENABLE_ALGORITHM_IN_FILE_SUFFIX:Ljava/lang/String; = "enable_algorithm_in_file_suffix"

.field public static final EXPOSURE_COMPENSATION_STEPS_NUM:Ljava/lang/String; = "camera_exposure_compensation_steps_num"

.field public static final FP_NAV_NAME:Ljava/lang/String; = "fp_nav_event_name_list"

.field public static final HIBERNATION_TIMEOUT:Ljava/lang/String; = "camera_hibernation_timeout_in_minutes"

.field public static final HIGH_SCREEN_REFRESH_RATE_LIST:Ljava/lang/String; = "fpsList"

.field public static final ISP_CAMERA_ISP_ROTATED:Ljava/lang/String; = "is_camera_isp_rotated"

.field public static final IS_18x9_RATIO_SCREEN:Ljava/lang/String; = "is_18x9_ratio_screen"

.field public static final IS_FRONT_FINGER_SENSOR:Ljava/lang/String; = "front_fingerprint_sensor"

.field public static final IS_FRONT_VIDEO_QUALITY_1080P:Ljava/lang/String; = "is_front_video_quality_1080p"

.field public static final IS_HAL_DOES_CAF_WHEN_FLASH_ON:Ljava/lang/String; = "is_hal_does_caf_when_flash_on"

.field public static final IS_HOLD_BLUR_BG:Ljava/lang/String; = "is_camera_hold_blur_background"

.field public static final IS_LOW_POWER_QRSCAN:Ljava/lang/String; = "is_camera_lower_qrscan_frequency"

.field public static final IS_PAD:Ljava/lang/String; = "is_pad"

.field public static final IS_REPLACE_HIGH_COST_EFFECT:Ljava/lang/String; = "is_camera_replace_higher_cost_effect"

.field public static final IS_RGB888_EGL_PREFER:Ljava/lang/String; = "is_rgb888_egl_prefer"

.field public static final IS_SENSOR_HAS_LATENCY:Ljava/lang/String; = "sensor_has_latency"

.field public static final IS_SUPPORT_OPTICAL_ZOOM:Ljava/lang/String; = "is_support_optical_zoom"

.field public static final IS_SUPPORT_STEREO:Ljava/lang/String; = "is_support_stereo"

.field public static final IS_SURFACE_SIZE_LIMIT:Ljava/lang/String; = "is_surface_size_limit"

.field public static final IS_VIDEO_SNAPSHOT_SIZE_LIMIT:Ljava/lang/String; = "is_video_snapshot_size_limit"

.field public static final REDUCE_PREVIEW_SIZE_FLAG:Ljava/lang/String; = "camera_reduce_preview_flag"

.field public static final SUBTHREAD_FRAME_LISTENER:Ljava/lang/String; = "is_camera_preview_with_subthread_looper"

.field public static final SUPPORT_3D_FACE_BEAUTY:Ljava/lang/String; = "support_3d_face_beauty"

.field public static final SUPPORT_4K_QUALITY:Ljava/lang/String; = "support_camera_4k_quality"

.field public static final SUPPORT_AOHDR:Ljava/lang/String; = "support_camera_aohdr"

.field public static final SUPPORT_ASD:Ljava/lang/String; = "camera_supported_asd"

.field public static final SUPPORT_BOOST_BRIGHTNESS:Ljava/lang/String; = "support_camera_boost_brightness"

.field public static final SUPPORT_BURST:Ljava/lang/String; = "support_camera_burst_shoot"

.field public static final SUPPORT_CAMERA_ROLE:Ljava/lang/String; = "support_camera_role"

.field public static final SUPPORT_CHROMA_FLASH:Ljava/lang/String; = "support_chroma_flash"

.field public static final SUPPORT_DUAL_SD_CARD:Ljava/lang/String; = "support_dual_sd_card"

.field public static final SUPPORT_FRONT_BEAUTY_MFNR:Ljava/lang/String; = "support_front_beauty_mfnr"

.field public static final SUPPORT_FRONT_FLASH:Ljava/lang/String; = "support_front_flash"

.field public static final SUPPORT_GRADIENTER:Ljava/lang/String; = "support_camera_gradienter"

.field public static final SUPPORT_LOCATION:Ljava/lang/String; = "support_camera_record_location"

.field public static final SUPPORT_MANUAL:Ljava/lang/String; = "support_camera_manual_function"

.field public static final SUPPORT_MI_FACE_BEAUTY:Ljava/lang/String; = "support_mi_face_beauty"

.field public static final SUPPORT_MOVIE_SOLID:Ljava/lang/String; = "support_camera_movie_solid"

.field public static final SUPPORT_NEW_STYLE_TIME_WATER_MARK:Ljava/lang/String; = "support_camera_new_style_time_water_mark"

.field public static final SUPPORT_PEAKING_MF:Ljava/lang/String; = "support_camera_peaking_mf"

.field public static final SUPPORT_PICTURE_WATER_MARK:Ljava/lang/String; = "support_picture_watermark"

.field public static final SUPPORT_PSENSOR_POCKET_MODE:Ljava/lang/String; = "support_psensor_pocket_mode"

.field public static final SUPPORT_QUICK_SNAP:Ljava/lang/String; = "support_camera_quick_snap"

.field public static final SUPPORT_REALTIME_MANUAL_EXPOSURE_TIME:Ljava/lang/String; = "support_realtime_manual_exposure_time"

.field public static final SUPPORT_SCREEN_LIGHT:Ljava/lang/String; = "support_screen_light"

.field public static final SUPPORT_SHADER_EFFECT:Ljava/lang/String; = "support_camera_shader_effect"

.field public static final SUPPORT_SKIN_BEAURY:Ljava/lang/String; = "support_camera_skin_beauty"

.field public static final SUPPORT_SUPER_RESOLUTION:Ljava/lang/String; = "support_super_resolution"

.field public static final SUPPORT_T2T:Ljava/lang/String; = "support_object_track"

.field public static final SUPPORT_TILT_SHIFT:Ljava/lang/String; = "support_camera_tilt_shift"

.field public static final SUPPORT_TIME_WATER_MARK:Ljava/lang/String; = "support_camera_water_mark"

.field public static final SUPPORT_TORCH:Ljava/lang/String; = "support_camera_torch_capture"

.field public static final SUPPORT_VIDEO_PAUSE:Ljava/lang/String; = "support_camera_video_pause"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
