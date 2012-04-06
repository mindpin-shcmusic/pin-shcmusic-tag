# fix tag 是中文时，有时会生成错误的SQL

module ActsAsTaggableOn
  class Tag < ::ActiveRecord::Base
    def safe_name
#      # 放方法实现
#      name.gsub(/[^a-zA-Z0-9]/, '')
      name.hash.to_s.gsub(/-/, 'a')
    end
  end
end