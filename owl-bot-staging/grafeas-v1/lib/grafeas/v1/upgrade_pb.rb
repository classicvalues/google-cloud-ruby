# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/upgrade.proto

require 'google/protobuf/timestamp_pb'
require 'grafeas/v1/package_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/upgrade.proto", :syntax => :proto3) do
    add_message "grafeas.v1.UpgradeNote" do
      optional :package, :string, 1
      optional :version, :message, 2, "grafeas.v1.Version"
      repeated :distributions, :message, 3, "grafeas.v1.UpgradeDistribution"
      optional :windows_update, :message, 4, "grafeas.v1.WindowsUpdate"
    end
    add_message "grafeas.v1.UpgradeDistribution" do
      optional :cpe_uri, :string, 1
      optional :classification, :string, 2
      optional :severity, :string, 3
      repeated :cve, :string, 4
    end
    add_message "grafeas.v1.WindowsUpdate" do
      optional :identity, :message, 1, "grafeas.v1.WindowsUpdate.Identity"
      optional :title, :string, 2
      optional :description, :string, 3
      repeated :categories, :message, 4, "grafeas.v1.WindowsUpdate.Category"
      repeated :kb_article_ids, :string, 5
      optional :support_url, :string, 6
      optional :last_published_timestamp, :message, 7, "google.protobuf.Timestamp"
    end
    add_message "grafeas.v1.WindowsUpdate.Identity" do
      optional :update_id, :string, 1
      optional :revision, :int32, 2
    end
    add_message "grafeas.v1.WindowsUpdate.Category" do
      optional :category_id, :string, 1
      optional :name, :string, 2
    end
    add_message "grafeas.v1.UpgradeOccurrence" do
      optional :package, :string, 1
      optional :parsed_version, :message, 3, "grafeas.v1.Version"
      optional :distribution, :message, 4, "grafeas.v1.UpgradeDistribution"
      optional :windows_update, :message, 5, "grafeas.v1.WindowsUpdate"
    end
  end
end

module Grafeas
  module V1
    UpgradeNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpgradeNote").msgclass
    UpgradeDistribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpgradeDistribution").msgclass
    WindowsUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.WindowsUpdate").msgclass
    WindowsUpdate::Identity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.WindowsUpdate.Identity").msgclass
    WindowsUpdate::Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.WindowsUpdate.Category").msgclass
    UpgradeOccurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpgradeOccurrence").msgclass
  end
end