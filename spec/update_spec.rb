# -*- coding: utf-8 -*-
#
# Copyright 2013 whiteleaf. All rights reserved.
#
# auto generated at 2015-08-07 22:44:33 +0900

require "commandline"
require "logger"

describe Command::Update do
  describe "--ignore-all" do
    it "should be blank" do
      cap = $stdout.capture {
        CommandLine.run!(%w(update --ignore-all))
      }.strip
      expect(cap).to eq ""
    end

    it "should not be blank" do
      frozen_id = Inventory.load("freeze").keys.first
      cap = $stdout.capture(quiet: true) {
        CommandLine.run!(["update", "--ignore-all", frozen_id])
      }.strip
      expect(cap).to eq "ID:22　もう一度ナデシコへ は凍結中です"
    end
  end
end
