class Avo::Resources::Book < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  
  def fields
    field :id, as: :id
    field :title, as: :text
    field :author, as: :text
    field :isbn, as: :text
    field :borrowings, as: :has_many
    field :users, as: :has_many, through: :borrowings
  end
end


