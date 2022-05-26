
#!/bin/bash
## **This is an autogenerated file, do not change it manually**

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
  set -euo pipefail

  dst_dir="${K14SIO_INSTALL_BIN_DIR:-/usr/local/bin}"

  if [ -x "$(command -v wget)" ]; then
    dl_bin="wget -nv -O-"
  else
    dl_bin="curl -s -L"
  fi

  shasum -v 1>/dev/null 2>&1 || (echo "Missing shasum binary" && exit 1)

  if [[ `uname` == Darwin ]]; then
    binary_type=darwin-amd64
    
    ytt_checksum=d46dba5e729e2fe36c369e96eaa2eb5354fb1bf7cf9184f9bfa829b8e5558b94
    imgpkg_checksum=b8462c9b2b9c060e1a81c206ea9810937bf7357ae2ee150f94ec8635dff1d612
    kbld_checksum=181ac8be5652b54344617d90aa8e83fbb41756d1b4b99168fec85d8813b3c1b2
    kapp_checksum=20b57cbb2ba883ebb78809a71c42c0f26b7b0ca15610d7a37dab4d962cca6e54
    kwt_checksum=555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517
    vendir_checksum=c26547097d67f21e129a25557d9d36c7c0e109afe130adff63d3c83ce9459ecc
    kctrl_checksum=4f4037ab7537db4a4518354dd0372ff5aedeea5491a08ddcc23aa477274e15a1
  else
    binary_type=linux-amd64
    
    ytt_checksum=11222665c627b8f0a1443534a3dde3c9b3aac08b322d28e91f0e011e3aeb7df5
    imgpkg_checksum=c7190adcb8445480e4e457c899aecdf7ca98606c625493b904c0eb2ab721ce19
    kbld_checksum=38a5dad7ed478d209c8206d95546989b2730c7fed914c78d85eed68a2233688e
    kapp_checksum=1f5fa1cb1d90575d97d7f7f801070ebf4096f10a0b21b4bbd9521b183bad91c6
    kwt_checksum=92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0
    vendir_checksum=1aa12d070f2e91fcb0f4d138704c5061075b0821e6f943f5a39676d7a4709142
    kctrl_checksum=d68f7400483950c0fc3190e637d2ecd644752ba577ad0164e05b575ff8c135f0
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.40.1"
  
  echo "Installing imgpkg..."
  $dl_bin github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.29.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.29.0"
  
  echo "Installing kbld..."
  $dl_bin github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.33.0"
  
  echo "Installing kapp..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp/releases/download/v0.48.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.48.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/vmware-tanzu/carvel-kwt/releases/download/v0.0.6/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.6"
  
  echo "Installing vendir..."
  $dl_bin github.com/vmware-tanzu/carvel-vendir/releases/download/v0.27.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.27.0"
  
  echo "Installing kctrl..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.36.1/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.36.1"
  
}

install
