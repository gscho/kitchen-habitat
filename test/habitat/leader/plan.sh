pkg_name=leader
pkg_origin=test
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_exports=(
  [test_export]=value
)
pkg_exposes=(test_export)
pkg_description="Test package."

do_download(){
  return 0
}

do_verify(){
  return 0
}

do_build(){
  return 0
}

do_install(){
  return 0
}