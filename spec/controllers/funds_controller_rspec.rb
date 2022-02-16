require "rails_helper"

describe FundsController, type: :controller do
  describe '#POST /funds' do
    context 'when all params are passed correctly'
      it 'expect que Fund.count increase by 1' do
        expect do 
          post :create, format: :json, params: {
            fund: {
              name: "MEEEU FUNDO", 
              creation_date: "2022-02-04"
            }
          }
        end.to change{Fund.count}.by -1

      end
    end
  end
