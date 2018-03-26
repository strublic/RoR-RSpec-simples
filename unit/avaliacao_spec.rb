require_relative "avaliacao"
describe Avaliacao do
  it "alunos com notas de prova e trabalho maior ou igual a 7 são aprovados" do
    # Arrange
    avaliacao = Avaliacao.new()
    # Act
    resultado = avaliacao.avaliar(7, 7)
    # Assert
    expect(resultado).to eq("Aprovado")
  end
  it "alunos com nota da prova maior ou igual a 7 e nota do trabalho menor que 7 precisarão repor a nota do trabalho" do
    # Arrange
    avaliacao = Avaliacao.new()
    # Act
    resultado = avaliacao.avaliar(7, 6.9)
    # Assert
    expect(resultado).to eq("Precisará repor a nota do trabalho")
  end
  it "alunos com notas de prova e trabalho menor do que 7 terão de fazer DP" do
    # Arrange
    avaliacao = Avaliacao.new()
    # Act
    resultado = avaliacao.avaliar(6.9, 0)
    # Assert
    expect(resultado).to eq("Terá de fazer DP")
  end
end