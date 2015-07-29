#!/usr/bin/env ruby

require 'rubygems'
require 'aws-sdk'

# AWS に接続する

s3 = Aws::S3::Client.new

# 接続したS3 の buckets のリストを取得

resp = s3.list_buckets

# S3 に登録されている bucket のリストを取得

bucket_list = resp.buckets.map(&:name)

resp2 = s3.list_objects(bucket: ENV["AWS_BUCKET_NAME"])

resp2.contents.each do |object|
  puts "#{object.key}"
end

