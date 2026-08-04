#!/system/bin/sh
# KernelSU / Magisk module installer script

ui_print "*****************************************"
ui_print "*    Ultimate GPS Fix & Optimizer       *"
ui_print "*       for Indonesia & Global          *"
ui_print "*****************************************"
ui_print " "
ui_print "- Sedang memasang konfigurasi GPS..."

# Framework KernelSU/Magisk akan otomatis mengekstrak folder 'system'.
# Fungsi di bawah ini hanya untuk memastikan izin file (permissions) sudah benar.

set_permissions() {
    # set_perm_recursive <direktori> <pemilik> <grup> <izin_dir> <izin_file>
    set_perm_recursive $MODPATH 0 0 0755 0644
    
    # Memastikan file gps.conf di legacy path memiliki izin rw-r--r--
    if [ -f $MODPATH/system/etc/gps.conf ]; then
        set_perm $MODPATH/system/etc/gps.conf 0 0 0644
    fi


    # Memastikan file gps.conf memiliki izin rw-r--r-- (0644)
    set_perm $MODPATH/system/vendor/etc/gps.conf 0 0 0644
    
    # Jika menggunakan struktur folder modern (gnss)
    if [ -f $MODPATH/system/vendor/etc/gnss/gps.conf ]; then
        set_perm $MODPATH/system/vendor/etc/gnss/gps.conf 0 0 0644
    fi
    
    ui_print "- Izin file (Permissions) berhasil diatur."
    ui_print "- Menghapus cache A-GPS lama..."
    rm -rf /data/system/gps/*
    rm -rf /data/vendor/location/*
    rm -f /data/system/location/xtra_data.bin

    ui_print "- Pemasangan selesai! Silakan Reboot HP Anda."
}
