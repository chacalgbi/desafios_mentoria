class CPF
  def self.valid?(cpf)
    cpf = cpf.gsub(/[^\d]/, '')

    return false unless cpf.length == 11

    return false if cpf.chars.all? { |digit| digit == cpf[0] }

    sum = 0
    9.times { |i| sum += cpf[i].to_i * (10 - i) }
    rest = sum % 11
    verify_1 = (rest < 2 ? 0 : 11 - rest)
    return false unless verify_1 == cpf[9].to_i

    sum = 0
    10.times { |i| sum += cpf[i].to_i * (11 - i) }
    rest = sum % 11
    verify_2 = (rest < 2 ? 0 : 11 - rest)
    return false unless verify_2 == cpf[10].to_i

    true
  end
end