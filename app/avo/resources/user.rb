class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  
  def fields
    field :id, as: :id
    field :email_address, as: :text
    field :name, as: :text
    # field :sessions, as: :has_many
    field :password, as: :password
    field :password_confirmation, as: :password
    field :borrowings, as: :has_many 
  end
end


