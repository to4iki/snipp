# encoding: utf-8

class Snippet < ActiveRecord::Base
  attr_accessible :title, :fragment, :tag_list, :pin

  # tag設置
  acts_as_taggable # acts_as_taggable_on :tagsカラムをセット

  # validation-rule
  validates :title, :presence => true,
                    :length => { :maximum => 30 }
end
