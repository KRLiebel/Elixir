defmodule Fizzbuzz_AppWeb.PageController do
  use Fizzbuzz_AppWeb, :controller

  # Criar um controlador para lidar com as rotas.
  
  def fizzbuzz(conn, _params) do
    numbers = Enumfilter(1..100, &rem(&1, 3) == 0 && rem(&1,5) == 0)
    render(conn, "fizzbuzz.html", numbers: numbers)
  end

  def fizz(conn _params) do
    numbers = Enum.filter(1..100, &re(&1,3) == 0)
    render(conn, "fizz.html", numbers: numbers)
  end

  def buzz(conn _params) do
    numbers = Enum.filter(1..100, &rem(&1, 5) == 0)
    render(conn, "buzz.html", numbers: numbers)
  end

  def other(conn _params) do
    numbers = Enum.filter(1..100, &rem(&1, 3) !=0 && rem(&1, 5) != 0)
    render(comm, "other.html", numbers: numbers)
  end
end
