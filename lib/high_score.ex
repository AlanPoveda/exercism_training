defmodule HighScore do
  def new() do
    # Please implement the new/0 function
    Map.new()
  end

  def add_player(scores, name) do
    Map.put(scores, name, 0)
  end

  def add_player(scores, name, score) do
    # Please implement the add_player/3 function
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    # Please implement the remove_player/2 function
    case Map.pop(scores, name) do
      {nil, result} -> result
      {_position, new_map} -> new_map
    end
  end

  def reset_score(scores, name) do
    # Please implement the reset_score/2 function
    Map.put(scores, name, 0)
  end

  def update_score(scores, name, score) do
    # Please implement the update_score/3 function
    Map.update(scores, name, score, &(&1+score) )
  end

  def get_players(scores) do
    # Please implement the get_players/1 function
    for {name, _score} <- scores, do: name
  end

end
