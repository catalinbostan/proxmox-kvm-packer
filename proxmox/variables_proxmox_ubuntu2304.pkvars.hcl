ansible_extra_args        = ["-e", "@extra/playbooks/provision_alma8_variables.yml", "-e", "@variables/almalinux8.yml"]
ansible_verbosity         = ["-v"]
ballooning_minimum        = "0"
boot_command              = "<wait3>c<wait3>linux /casper/vmlinuz quiet autoinstall net.ifnames=0 biosdevname=0 ip=dhcp ipv6.disable=1 ds='nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/gen2-ubuntu2304/' <enter><wait5>initrd /casper/initrd<wait15><enter>boot<wait5><enter>"
boot_wait                 = "15s"
cloud-init_path           = "extra/files/cloud-init/ubuntu/generic/cloud.cfg"
cores                     = "4"
cpu_type                  = "host"
disable_kvm               = false
disks = {
    cache_mode            = "writeback"
    disk_size             = "50G"
    format                = "raw"
    type                  = "virtio"
    storage_pool          = "zfs"
}
insecure_skip_tls_verify  = true
iso_file                  = "images:iso/ubuntu-23.04-live-server-amd64.iso"
memory                    = "4096"
network_adapters = {
    bridge                = "vmbr0"
    model                 = "virtio"
    firewall              = false
    mac_address           = ""
}
proxmox_node              = "proxmox5"
provision_script_options  ="-z false -h false -p false"
qemu_agent                = true
scsi_controller           = "virtio-scsi-pci"
sockets                   = "1"
ssh_password              = "password"
ssh_username              = "ubuntu"
task_timeout              = "20m"
template                  = "ubuntu23.04"
unmount_iso               = true
