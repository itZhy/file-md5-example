#encoding:utf-8
require 'digest/md5'

class FileMD5

  def calculate(file_path)
    Digest::MD5.hexdigest(File.open(file_path))
  rescue
    raise StandardError.new("file not found:[#{file_path}].")
  end
end