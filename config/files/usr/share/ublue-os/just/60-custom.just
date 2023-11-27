!include 100-bling.just
# Include some of your custom scripts here!

install-corectrl:
    echo "Installing CoreCtrl..."
    ublue-update --wait
    rpm-ostree install corectrl
    echo "Adding Kernel parameters..."
    rpm-ostree kargs --append="amdgpu.ppfeaturemask=0xffffffff"

enable-flatpak-theming:
    flatpak override --user --filesystem=xdg-config/gtk-4.0:ro --filesystem=xdg-config/gtk-3.0:ro --filesystem=~/.icons:ro --filesystem=~/.themes:ro
