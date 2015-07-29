#!/usr/bin/env ruby

require 'rubygems'
require 'aws-sdk'

# アップロードするファイル（ディレクトリも含む）のリストを取得する

Dir.chdir("../../")

upload_file_list = Dir.glob '**/*'

# AWS に接続する

s3_update = Aws::S3::Resource.new

# 取得したファイルのリストをアップロードする

puts s3_update

upload_file_list.each{|path|

  # 取得したリストでディレクトリの場合は処理をスキップする

  puts path

  next unless FileTest.file?(path)

  # 指定した バケットにファイルをアップロードする

#  upload_object = s3_update.bucket(ENV["AWS_BUCKET_NAME"]).object(path)
#  upload_object.upload_file(path)
}

