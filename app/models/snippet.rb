# encoding: utf-8

class Snippet < ActiveRecord::Base
  attr_accessible :title, :fragment, :tag_list

  # tag設置
  acts_as_taggable # acts_as_taggable_on :tagsカラムをセット
  # acts_as_taggable_on :technologies # technologiesカラムをセット

  # validation-rule
  validates :title, :presence => true,
                    :length => { :maximum => 30 }
end
