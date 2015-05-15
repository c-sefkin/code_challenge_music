class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:name, :presence => true)

  private

  define_method(:capitalize_name) do
    self.name=(name().capitalize())
  end
end
