class Value < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' }, 
    { id: 1, name: 'いつもと同じ' }, 
    { id: 2, name: 'いつもの2倍できた' },
    { id: 3, name: 'いつもの3倍できた' },  
    { id: 4, name: 'いつもの4倍できた' },
    { id: 5, name: 'いつもの5倍できた' }
  ]

  include ActiveHash::Associations
  has_many :blocks
end
