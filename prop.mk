#
# system.prop for msm8953-common
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.btstack.enable.splita2dp=false \
persist.vendor.audio.fluence.voicecall=true \
vendor.audio.offload.multiple.enabled=false \
vendor.voice.conc.fallbackpath=deep-buffer \
persist.vendor.audio.fluence.voicerec=true \
vendor.audio.offload.gapless.enabled=true \
persist.vendor.audio.fluence.speaker=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.playback.mch.downsample=true \
vendor.voice.playback.conc.disabled=true \
vendor.voice.record.conc.disabled=false \
ro.vendor.audio.sdk.fluencetype=fluence \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.track.enable=true \
vendor.audio.pp.asphere.enabled=false \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.parser.ip.buffer.size=0 \
vendor.audio.use.sw.ape.decoder=true \
vendor.voice.voip.conc.disabled=true \
vendor.voice.path.for.pcm.voip=true \
vendor.audio.safx.pbe.enabled=true \
audio.offload.min.duration.secs=30 \
vendor.audio.tunnel.encode=false \
vendor.audio_hal.period_size=192 \
ro.config.vc_call_vol_steps=7 \
ro.vendor.audio.sdk.ssr=false \
audio.deep_buffer.media=true \
ro.config.media_vol_steps=25 \
af.fast_track_multiplier=2 \
audio.offload.disable=true \
audio.offload.video=true 

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
ro.qualcomm.bt.hci_transport=smd \
ro.bluetooth.hfp.ver=1.7 \
bluetooth.hfp.client=1 \
qcom.bluetooth.soc=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.qti.telephony.vt_cam_interface=1 \
persist.vendor.camera.HAL3.enabled=1 \
vidc.enc.dcvs.extra-buff-count=2 \
persist.camera.isp.clock.optmz=0 \
camera.lowpower.record.enable=1 \
persist.camera.gyro.disable=0 \
camera.display.umax=1920x1080 \
camera.display.lmax=1280x720 \
media.camera.ts.monotonic=1 \
persist.camera.stats.test=5

# Camera HAL1 packagelist
PRODUCT_PROPERTY_OVERRIDES += \
camera.hal1.packagelist=com.skype.raider,com.google.android.talk

# CNE and DPM
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1 \
persist.dpm.feature=1

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.coresight.config=stm-events

# Display
PRODUCT_PROPERTY_OVERRIDES += \
vendor.display.enable_default_color_mode=1 \
vendor.display.disable_skip_validate=1 \
persist.demo.hdmirotationlock=false \
sdm.debug.disable_skip_validate=1 \
vendor.gralloc.enable_fb_ubwc=1 \
persist.hwc.mdpcomp.enable=true \
debug.gralloc.enable_fb_ubwc=1 \
debug.sf.latch_unsignaled=1 \
persist.debug.wfd.enable=1 \
ro.opengles.version=196610 \
debug.sf.enable_hwc_vds=1 \
dev.pm.dyn_samplingrate=1 \
debug.cpurend.vsync=false \
debug.sf.recomputecrop=0 \
persist.hwc.enable_vds=1 \
ro.vendor.display.cabl=2 \
debug.enable.sglscale=1 \
ro.sf.lcd_density=480 \
debug.mdpcomp.logs=0 \
ro.qualcomm.cabl=0 \
debug.egl.hw=0 \
debug.sf.hw=0

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
persist.qfp=false

# FM
PRODUCT_PROPERTY_OVERRIDES += \
ro.fm.transmitter=false

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/config

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
persist.loc.nlp_name=com.qualcomm.location \
persist.gps.qc_nlp_in_use=1 \
ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
vendor.vidc.dec.downscalar_height=1088 \
vendor.vidc.dec.downscalar_width=1920 \
vendor.mm.enable.qcom_parser=1048575 \
vendor.vidc.enc.disable_bframes=1 \
media.aac_51_output_enabled=true \
media.stagefright.audio.sink=280 \
vendor.audio.hw.aac.encoder=true \
vendor.vidc.disable.split.mode=1 \
vendor.vidc.enc.disable.pq=true \
mm.enable.smoothstreaming=true \
av.debug.disable.pers.cache=1 \
vendor.video.disable.ubwc=1 \
mmp.enable.3g2=true \
media.msm8956hw=0

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.extension_library=libqti-perfd-client.so

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
persist.data.netmgrd.qos.enable=true \
persist.vendor.data.mode=concurrent \
ro.vendor.use_data_netmgrd=true

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
persist.rild.nitz_short_ons_0="" \
persist.rild.nitz_short_ons_1="" \
persist.rild.nitz_short_ons_2="" \
persist.rild.nitz_short_ons_3="" \
persist.rild.nitz_long_ons_0="" \
persist.rild.nitz_long_ons_1="" \
persist.rild.nitz_long_ons_2="" \
persist.rild.nitz_long_ons_3="" \
persist.rild.nitz_plmn="" \

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
persist.vendor.radio.apm_sim_not_pwdn=1 \
ro.telephony.call_ring.multiple=false \
persist.vendor.radio.sib16_support=1 \
persist.vendor.radio.rat_on=combine \
persist.radio.multisim.config=dsds \
persist.vendor.radio.custom_ecc=1 \
ro.telephony.default_network=12 \
ril.subscription.types=NV,RUIM \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
service.qti.ims.enabled=1 \
rild.libargs=-d/dev/smd0 \
DEVICE_PROVISIONED=1

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.delta_time.enable=true

# TCP
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10

# UI
PRODUCT_PROPERTY_OVERRIDES += \
sys.use_fifo_ui=1

# USB
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.usb.config.extra=none

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0
