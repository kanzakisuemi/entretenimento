class Aluno < ApplicationRecord
  attr_accessor :nome, :nota
  def initialize (nome, nota)
    @nome = nome
    @nota = nota
  end
  def adicionar_nota (nova_nota)
    @nota << nova_nota
  end
  # def soma_nota
  #   total = 0
  #   @notas.each do |n|
  #     total += n
  #   end
  #   puts total
  # end
  def soma_nota
    puts @nota.sum
  end
end
