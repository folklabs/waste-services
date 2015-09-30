
class Service
  include Her::Model
  has_one :last_collection, class_name: "Collection"
  has_one :next_collection, class_name: "Collection"
  has_many :container_types
end