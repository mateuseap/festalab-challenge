class User < ApplicationRecord
    validates :name, presence: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true, uniqueness: true
    validates :phone, presence: true, uniqueness: true
    validates :cpf, cpf: true, numericality: { only_integer: true }, presence: true, uniqueness: true
    validate :phone_format

    private

    def phone_format
        unless TelephoneNumber.parse(phone, :br).valid?
            errors.add(:phone, 'inválido')
        end
    end
end