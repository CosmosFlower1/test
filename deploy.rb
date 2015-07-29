#!/usr/bin/env ruby

require 'rubygems'
require 'fileutils'
require 'aws-sdk'

# AWS に接続する

#s3 = Aws::S3::Client.new

# 接続したS3 の buckets のリストを取得

#resp = s3.list_buckets

# S3 に登録されている bucket のリストを取得

#bucket_list = resp.buckets.map(&:name)

#resp2 = s3.list_objects(bucket: ENV["AWS_BUCKET_NAME"])

#resp2.contents.each do |object|
#  puts "#{object.key}"
#end

p Dir::entries("../")

current_directory_path = Dir.getwd
current_directory_name = current_directory_path.match(/[a-zA-Z0-9]*$/)[0]

puts current_directory_path
puts current_directory_name
#FileUtils.cp_r('testdir', 'cptest')



