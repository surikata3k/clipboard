/etc/systemd/logind.conf:
HandleLidSwitch=ignore


/etc/default/grub
GRUB_TIMEOUT=0
GRUB_CMDLINE_LINUX="consoleblank=60"

$update-grub
