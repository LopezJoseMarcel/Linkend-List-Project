class Tablero
  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], #=> filas
    [0, 3, 6], [1, 4, 7], [2, 5, 8], #=> columnas
    [0, 4, 8], [2, 4, 6]             #=> diagonales
  ].freeze

  attr_accessor :tablero_mov, :players, :game_running, :winner

  def initialize(players)
    @players = players
    @game_running = true
    @tablero_mov = []
    (1..9).to_a.each_slice(3) { |sec| @tablero_mov << sec }
    @score = { players[0].name => [], players[1].name => [] }
  end

  def add_move(mov,player)
    p_name = player.name
    @tablero_mov.each_with_index do |fila, i|
      j = fila.index(mov.to_i)
      unless j.nil?
        @score[p_name] << [i, j]
        @tablero_mov[i][j] = p_name
        break
      end
    end
    puts " #{@score}"
    check_status
    check_draw
  end

  def show_tablero
    @tablero_mov.each { |i| puts i.join(' | ')}
  end
  def check_status
    @score.each do |key, value|
      posiciones = value.map { |fila, col| fila * 3 + col }
      gano = WINNING_COMBOS.any? { |combo| (combo - posiciones).empty? }
      next unless gano

      puts "The winner only is #{key}"
      @game_running = false
      @winner = key
      break
    end
  end

  def check_draw
    return unless @game_running

    tablero_lleno = @tablero_mov.flatten.none? { |celda| celda.is_a?(Integer) }
    return unless tablero_lleno

    puts 'Empate!'
    @game_running = false
  end
end

class Player
  attr_accessor :name ,:tablero
  #movements => 3
  def initialize(name)
    @name = name
  end
end

x_player = Player.new("X")
o_player = Player.new("O")
tablero_tic = Tablero.new([x_player, o_player])

while tablero_tic.game_running
  tablero_tic.players.each do |player|
    tablero_tic.show_tablero
    puts "Ingresa un valor jugador #{player.name}  (o 'salir' para terminar):"
    valor = gets.chomp  # .chomp elimina el salto de línea
    #=> movimientos
    tablero_tic.add_move(valor,player)
    break if tablero_tic.game_running == false # probar until
  end
end
