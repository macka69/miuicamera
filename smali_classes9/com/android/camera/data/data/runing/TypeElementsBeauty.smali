.class public Lcom/android/camera/data/data/runing/TypeElementsBeauty;
.super Lcom/android/camera/data/data/TypeElements;
.source "TypeElementsBeauty.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/TypeElements;-><init>(Lcom/android/camera/data/data/ComponentData;)V

    return-void
.end method

.method private createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->supportType(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 p4, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "key_video_bokeh_blur_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x25

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "pref_beautify_toughman_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "pref_beauty_head_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "key_live_enlarge_eye_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x22

    goto/16 :goto_0

    :sswitch_4
    const-string p3, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string p3, "pref_beautify_makeups_none"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string p3, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string p3, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string p3, "pref_beautify_female_pink_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x18

    goto/16 :goto_0

    :sswitch_9
    const-string p3, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string p3, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string p3, "key_video_bokeh_spin_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x26

    goto/16 :goto_0

    :sswitch_c
    const-string p3, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_0

    :sswitch_d
    const-string p3, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x2

    goto/16 :goto_0

    :sswitch_e
    const-string p3, "pref_beautify_nose_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x6

    goto/16 :goto_0

    :sswitch_f
    const-string p3, "pref_eye_light_type_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x13

    goto/16 :goto_0

    :sswitch_10
    const-string p3, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x5

    goto/16 :goto_0

    :sswitch_11
    const-string p3, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p0, p4

    goto/16 :goto_0

    :sswitch_12
    const-string p3, "key_video_bokeh_color_point_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x28

    goto/16 :goto_0

    :sswitch_13
    const-string p3, "pref_beautify_nude_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x15

    goto/16 :goto_0

    :sswitch_14
    const-string p3, "key_live_shrink_face_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x21

    goto/16 :goto_0

    :sswitch_15
    const-string p3, "pref_beautify_color_skin_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x3

    goto/16 :goto_0

    :sswitch_16
    const-string p3, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x7

    goto/16 :goto_0

    :sswitch_17
    const-string p3, "pref_beautify_gentleman_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string p3, "key_beauty_leg_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1e

    goto/16 :goto_0

    :sswitch_19
    const-string p3, "pref_beautify_chin_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string p3, "pref_beautify_lips_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string p3, "pref_beautify_neck_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xb

    goto/16 :goto_0

    :sswitch_1c
    const-string p3, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xd

    goto/16 :goto_0

    :sswitch_1d
    const-string p3, "key_video_bokeh_blur_null"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x24

    goto/16 :goto_0

    :sswitch_1e
    const-string p3, "pref_beautify_eyebrow_dye_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string p3, "pref_beautify_smile_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xc

    goto :goto_0

    :sswitch_20
    const-string p3, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1f

    goto :goto_0

    :sswitch_21
    const-string p3, "pref_beautify_female_blue_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x19

    goto :goto_0

    :sswitch_22
    const-string p3, "key_video_bokeh_zoom_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x27

    goto :goto_0

    :sswitch_23
    const-string p3, "pref_beauty_butt_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x20

    goto :goto_0

    :sswitch_24
    const-string p3, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x11

    goto :goto_0

    :sswitch_25
    const-string p3, "pref_beautify_solid_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :sswitch_26
    const-string p3, "pref_beautify_solid_makeups_ratio_key"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1a

    goto :goto_0

    :sswitch_27
    const-string p3, "pref_beauty_body_slim_ratio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x1c

    goto :goto_0

    :sswitch_28
    const-string p3, "key_live_smooth_strength"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0x23

    :cond_1
    :goto_0
    const p3, 0x7f110347

    const v1, 0x7f08041c

    const v2, 0x7f11034c

    const v3, 0x7f08042e

    const v4, 0x7f110340

    const v5, 0x7f0803eb

    const v6, 0x7f110343

    const v7, 0x7f0803ee

    const v8, 0x7f0803d0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "to be continued createTypeItem = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080552

    const p4, 0x7f110911

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080554

    const p4, 0x7f110913

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080553

    const p4, 0x7f110912

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080551

    const p4, 0x7f110910

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0802bc

    const p4, 0x7f110406

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v3, v2, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v5, v4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v7, v6, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_8
    return-object v0

    :pswitch_9
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080436

    const p4, 0x7f1101de

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080403

    const p4, 0x7f1101da

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08042c

    const p4, 0x7f1101dc

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803d2

    const p4, 0x7f1101d8

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803ff

    const p4, 0x7f1101d9

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800b1

    const p4, 0x7f1101f0

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800ad

    const p4, 0x7f1101ec

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800b0

    const p4, 0x7f1101ef

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800ae

    const p4, 0x7f1101ed

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800b2

    const p4, 0x7f1101f1

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0800af

    const p4, 0x7f1101ee

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08040e

    invoke-direct {p0, p4, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803ec

    const p4, 0x7f11035a

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803d1

    const p4, 0x7f11033d

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080400

    const p4, 0x7f110345

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080421

    const p4, 0x7f11034a

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803ed

    const p4, 0x7f110341

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f08040d

    invoke-direct {p0, p4, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f11034e

    invoke-direct {p0, v1, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f11034f

    invoke-direct {p0, v8, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1d
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080543

    const p4, 0x7f110348

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1e
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803d5

    const p4, 0x7f11033e

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1f
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080404

    const p4, 0x7f110346

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_20
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f0803fe

    const p4, 0x7f110344

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_21
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f080546

    const p4, 0x7f11034b

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_22
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f110349

    invoke-direct {p0, v1, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_23
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v3, v2, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_24
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08042f

    const p4, 0x7f110350

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_25
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f08042d

    const v0, 0x7f11033f

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/camera/data/data/TypeItem;->setExpandable(Z)Lcom/android/camera/data/data/TypeItem;

    return-object p0

    :pswitch_26
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v5, v4, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_27
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    invoke-direct {p0, v7, v6, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_28
    new-instance p0, Lcom/android/camera/data/data/TypeItem;

    const p3, 0x7f11034d

    invoke-direct {p0, v8, p3, p1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7dcb43c1 -> :sswitch_28
        -0x676e6ee1 -> :sswitch_27
        -0x62238142 -> :sswitch_26
        -0x5eed1fcd -> :sswitch_25
        -0x5e6b0daf -> :sswitch_24
        -0x5a8387f2 -> :sswitch_23
        -0x578d3e1f -> :sswitch_22
        -0x512efc00 -> :sswitch_21
        -0x4b3d8c29 -> :sswitch_20
        -0x423823b0 -> :sswitch_1f
        -0x3926c11e -> :sswitch_1e
        -0x35cb8f23 -> :sswitch_1d
        -0x3579d363 -> :sswitch_1c
        -0x1403c3d1 -> :sswitch_1b
        -0x12884130 -> :sswitch_1a
        -0x102a61a6 -> :sswitch_19
        -0x8bc7263 -> :sswitch_18
        -0x7ec39d0 -> :sswitch_17
        -0x25d6108 -> :sswitch_16
        0x793fd29 -> :sswitch_15
        0xa78ecec -> :sswitch_14
        0x15cb02a3 -> :sswitch_13
        0x2874ca3e -> :sswitch_12
        0x35532ea7 -> :sswitch_11
        0x36aaa8f8 -> :sswitch_10
        0x3832544d -> :sswitch_f
        0x3ad8a2a3 -> :sswitch_e
        0x3e8271ec -> :sswitch_d
        0x3f0b1471 -> :sswitch_c
        0x54544710 -> :sswitch_b
        0x5514d1b5 -> :sswitch_a
        0x55d54f59 -> :sswitch_9
        0x60e7c61c -> :sswitch_8
        0x6202ad75 -> :sswitch_7
        0x62f067e6 -> :sswitch_6
        0x65334ab1 -> :sswitch_5
        0x65e369e1 -> :sswitch_4
        0x699265fd -> :sswitch_3
        0x73f08a21 -> :sswitch_2
        0x75f4541a -> :sswitch_1
        0x7c890f75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_ADVANCE:[Ljava/lang/String;

    const-string v1, "3"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    const-string v1, "6"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string p4, "4"

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, p4, v0, p2, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initFrontMakeupsItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_MAKEUPS:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v1, "18"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method private initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;Z",
            "Lcom/android/camera2/CameraCapabilities;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2, p4, p5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initLiveBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LIVE:[Ljava/lang/String;

    const-string v1, "11"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initMakeUpItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object p4, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_MAKEUP:[Ljava/lang/String;

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p4, v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x3832544d

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "pref_eye_light_type_key"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    :cond_1
    :goto_1
    const-string v6, "5"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-direct {p0, v6, v3, v7, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v4

    goto :goto_2

    :cond_2
    if-ne p2, v7, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->supportEyeLight()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v6, v3, v1, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object v4

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private initMiLiveItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_MI_LIVE:[Ljava/lang/String;

    const-string v1, "15"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string p4, "15"

    const-string v0, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, p4, v0, p2, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initReModelingItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_REMODELING:[Ljava/lang/String;

    const-string v1, "4"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p2

    const-string v0, "pref_beautify_risorius_ratio_key"

    const-string v1, "4"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v5, v2

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v5, p2, :cond_5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/data/TypeItem;

    iget-object v8, v8, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x25d6108

    if-eq v9, v10, :cond_1

    const v10, 0x62f067e6

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "pref_beautify_hairline_ratio_key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_4

    if-eq v8, v4, :cond_3

    goto :goto_3

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    move v7, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eq v6, v3, :cond_6

    if-eq v7, v3, :cond_6

    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    const-string p2, "pref_beautify_skin_smooth_ratio_key"

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "pref_beautify_color_skin_ratio_key"

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 v5, 0x3

    invoke-interface {p1, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    const-string p2, "pref_beautify_solid_ratio_key"

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p2

    if-eqz p2, :cond_9

    const/4 v5, 0x4

    invoke-interface {p1, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/TypeItem;

    iget-object p2, p2, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    if-ne p2, v0, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_5
    if-eq v2, v3, :cond_c

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyMakeUp()Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "pref_beautify_makeup_ratio_key"

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->createTypeItem(Ljava/lang/String;Ljava/lang/String;ZLcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/TypeItem;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private initSuperNightBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_SUPER_NIGHT:[Ljava/lang/String;

    const-string v1, "17"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private initVideoBokehItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/runing/ComponentRunningShine;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/constant/VideoBokehConstant;->BEAUTY_CATEGORY_VIDEO_BOKEH:[Ljava/lang/String;

    const-string v1, "14"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initItemsBySupportedTypes(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ZLcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method private supportType(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "pref_beautify_color_skin_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportSkinColor()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const-string p0, "18"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportMakeups()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3, p2}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyType(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public initAndGetSupportItems(ILcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/TypeElements;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    check-cast v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x620

    if-eq v3, v4, :cond_4

    const/16 v4, 0x623

    if-eq v3, v4, :cond_3

    const/16 v4, 0x624

    if-eq v3, v4, :cond_2

    const/16 v4, 0x626

    if-eq v3, v4, :cond_1

    const/16 v4, 0x627

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "6"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_1
    const-string v3, "5"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const-string v3, "4"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    const-string v3, "3"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "18"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v3, "17"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const-string v3, "15"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "14"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x7

    goto :goto_0

    :cond_4
    const-string v3, "11"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x6

    :cond_5
    :goto_0
    packed-switch v2, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "to be continuedshineType"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initSuperNightBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initVideoBokehItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initLiveBeautyItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initFigureItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initFrontMakeupsItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initMakeUpItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initMiLiveItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initReModelingItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;->initAdvanceItems(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
