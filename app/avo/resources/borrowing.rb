class Avo::Resources::Borrowing < Avo::BaseResource
  self.includes = [:user, :book]

  def fields
    field :id, as: :id
    field :user, as: :belongs_to
    field :book, as: :belongs_to
    field :due_date, as: :date
    field :returned, as: :boolean
    field :fine, as: :number

    field :payment_status, as: :select, options: {
      "pending" => "Pending",
      "paid" => "Paid"
    }

    field :payment_method, as: :select, options: {
      "mpesa" => "M-Pesa",
      "paypal" => "PayPal",
      "cash" => "Cash"
    }

    field :payment_reference, as: :text
  end
end
