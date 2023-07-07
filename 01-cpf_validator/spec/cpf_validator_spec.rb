require_relative '../cpf_validator'

RSpec.describe CPF do
  describe '.valid?' do

    context 'quando o CPF é válido' do
      it 'retorna true' do
        expect(CPF.valid?('286.658.874-66')).to be true
      end
    end

    context 'quando o CPF é inválido' do
      it 'retorna false' do
        expect(CPF.valid?('123.456.789-00')).to be false
      end
    end

    context 'quando o CPF é incompleto' do
      it 'retorna false' do
        expect(CPF.valid?('123.456.789')).to be false
      end
    end

    context 'quando todas os números são iguais' do
      it 'retorna false' do
        expect(CPF.valid?('222.222.222-22')).to be false
      end
    end

  end
end
