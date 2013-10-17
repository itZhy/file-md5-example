require "MD5Calculation/version"

module MD5Calculation
  require "MD5Calculation/file_md5"
  LIBDIR = File.expand_path(File.dirname(__FILE__))
end

$LOAD_PATH.unshift BackgroundCommon::LIBDIR unless $LOAD_PATH.include? MD5Calculation::LIBDIR

