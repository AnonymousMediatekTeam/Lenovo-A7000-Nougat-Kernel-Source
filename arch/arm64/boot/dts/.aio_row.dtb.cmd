cmd_arch/arm64/boot/dts/aio_row.dtb := /home/nikolay/aosp/prebuild/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -E -Wp,-MD,arch/arm64/boot/dts/.aio_row.dtb.d.pre.tmp -nostdinc -I/home/nikolay/aosp/Android7A7000/arch/arm64/boot/dts -I/home/nikolay/aosp/Android7A7000/arch/arm64/boot/dts/include -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/.aio_row.dtb.dts.tmp arch/arm64/boot/dts/aio_row.dts ; /home/nikolay/aosp/Android7A7000/scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/aio_row.dtb -b 0 -i arch/arm64/boot/dts/ -i /home/nikolay/aosp/Android7A7000/drivers/misc/mediatek/mach/mt6752/aio_row/dct/dct/ -d arch/arm64/boot/dts/.aio_row.dtb.d.dtc.tmp arch/arm64/boot/dts/.aio_row.dtb.dts.tmp ; cat arch/arm64/boot/dts/.aio_row.dtb.d.pre.tmp arch/arm64/boot/dts/.aio_row.dtb.d.dtc.tmp > arch/arm64/boot/dts/.aio_row.dtb.d

source_arch/arm64/boot/dts/aio_row.dtb := arch/arm64/boot/dts/aio_row.dts

deps_arch/arm64/boot/dts/aio_row.dtb := \
  arch/arm64/boot/dts/mt6752.dtsi \
    $(wildcard include/config/base.h) \
    $(wildcard include/config/addr.h) \
  /home/nikolay/aosp/Android7A7000/drivers/misc/mediatek/mach/mt6752/aio_row/dct/dct/cust_eint.dtsi \
  arch/arm64/boot/dts/trusty.dtsi \

arch/arm64/boot/dts/aio_row.dtb: $(deps_arch/arm64/boot/dts/aio_row.dtb)

$(deps_arch/arm64/boot/dts/aio_row.dtb):
