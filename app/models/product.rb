# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  price       :text
#  image       :text
#  sold        :boolean
#  seller_id   :integer
#  buyer_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  quantity    :integer
#

class Product < ApplicationRecord
    has_and_belongs_to_many :orders
    include PgSearch

    pg_search_scope :search, :against => [:name, :description],
        :using => {tsearch: {:dictionary => "english"}}
   
    def self.text_search(query)
        if self.present?
            # rank = <<-Rank
            #     ts_rank(to_tsvector(name), plainto_tsquery(#{sanitize(query)})) + ts_rank(to_tsvector(description), plainto_tsquery(#{sanitize(query)}))
            # Rank
            # where("to_tsvector('english', name) @@ :q or to_tsvector('english', description) @@ :q", :q => query).order("#{rank} desc")
            search(query)
        else
            scoped
        end
    end

end
