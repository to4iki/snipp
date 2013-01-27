# encoding: utf-8

class Snippet < ActiveRecord::Base
  attr_accessible :command, :del_flg, :description

  # tag設置
  acts_as_taggable # acts_as_taggable_on :tagsカラムをセット
#  acts_as_taggable_on :technologies # technologiesカラムをセット
end
