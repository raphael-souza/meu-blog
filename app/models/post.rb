class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :coments, dependent: :destroy # excluir comentários qdo artigo tbm for excluido
  has_attached_file :image, styles: { medium: "400X300>", thumb: "100x100>" }, default_url: "/images/nup1787091488jpg.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end
