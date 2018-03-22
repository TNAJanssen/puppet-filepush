# == Class: filepush
#
# This module was born out of a need to have a simple way to push files that is
# fully parameterized and creates parent directory structures that do not exist.
# It was created also for the use with Foreman as an ENC.
#
# === Parameters
#
# Document parameters here.
#
# [*source*]
#   The path that defines where puppet is getting the file from.
#   The source parameter default is: undefined.
#
# [*target*]
#   The path that defines where puppet is putting the file.
#   The target parameter default is: undefined.
#
# [*owner*]
#   The user that owns the file.  The owner default is: undefined.
#
# [*group*]
#   The group that owns the file. The group default is: the same as $owner.
#
# [*mode*]
#   The parameter to set file permissions.  The default is: 0644
#
#
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
#
#
class filepush (
  $files = {}
) {
  create_resources(file, $files)
  #file { $target:
  #  ensure => directory,
  #  path   => $target,
  #  mode   => $mode,
  #  owner  => $owner,
  #  group  => $group,
  #  source => $source,
  #}
}
